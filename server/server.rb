require 'sinatra'
require 'helpers'
require 'base64'
module Mirage

  class Server < Sinatra::Base

    REQUESTS = {}


    helpers Mirage::Server::Helpers

    put '/mirage/templates/*' do |name|
      MockResponse.new(name,JSON.parse(request.body.read)).response_id.to_s
    end

    %w(get post delete put).each do |http_method|
      send(http_method, '/mirage/responses/*') do |name|
        body, query_string = Rack::Utils.unescape(request.body.read.to_s), request.query_string

        begin
          record = MockResponse.find(body, request.params, name, http_method)
        rescue ServerResponseNotFound
          record = MockResponse.find_default(body, http_method, name, request.params)
        end

        REQUESTS[record.response_id] = body.empty? ? query_string : body

        send_response(record, body, request, query_string)
      end
    end

    delete '/mirage/templates/:id' do
      MockResponse.delete(response_id)
      REQUESTS.delete(response_id)
      200
    end

    delete '/mirage/requests' do
      REQUESTS.clear
      200
    end

    delete '/mirage/requests/:id' do
      REQUESTS.delete(response_id)
      200
    end

    delete '/mirage/templates' do
      REQUESTS.clear
      MockResponse.delete_all
      200
    end

    get '/mirage/templates/:id' do
      MockResponse.find_by_id(response_id).raw
    end

    get '/mirage/requests/:id' do
      REQUESTS[response_id] || 404
    end

    get '/mirage' do
      @responses = {}

      MockResponse.all.each do |response|
        pattern = response.pattern.is_a?(Regexp) ? "pattern = #{response.pattern.source}" : ''
        delay = response.delay > 0 ? "delay = #{response.delay}" : ''
        pattern << ' ,' unless pattern.empty? || delay.empty?
        @responses["#{response.name}#{'/*' if response.default?}: #{pattern} #{delay}"] = response
      end
      erb :index
    end


    put '/mirage/defaults' do
      MockResponse.delete_all
      if File.directory?(settings.defaults.to_s)
        Dir["#{settings.defaults}/**/*.rb"].each do |default|
          begin
            eval File.read(default)
          rescue Exception => e
            raise "Unable to load default responses from: #{default}"
          end
        end
      end
      200
    end
#
    put '/mirage/backup' do
      MockResponse.backup
      200
    end


    put '/mirage' do
      MockResponse.revert
      200
    end

    get '/mirage/pid' do
      "#{$$}"
    end

    error ServerResponseNotFound do
      404
    end

    error do
      erb request.env['sinatra.error'].message
    end

    helpers do

      def response_id
        params[:id].to_i
      end

      def prime &block
        block.call Mirage::Client.new "http://localhost:#{settings.port}/mirage"
      end

      def send_response(response, body='', request={}, query_string='')
        sleep response.response_spec['delay']
        content_type(response.response_spec['content_type'])
        status response.response_spec['status']
        response.value(body, request, query_string)
      end
    end
  end
end