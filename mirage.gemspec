# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "mirage"
  s.version = "2.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Leon Davis"]
  s.date = "2012-09-20"
  s.description = "Mirage aids testing of your applications by hosting mock responses so that your applications do not have to talk to real endpoints. Its accessible via HTTP and has a RESTful interface."
  s.executables = ["mirage"]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".rvmrc",
    "Gemfile",
    "Gemfile.lock",
    "HISTORY",
    "README.md",
    "VERSION",
    "bin/mirage",
    "features/client/clear.feature",
    "features/client/configure.feature",
    "features/client/preview_responses.feature",
    "features/client/put.feature",
    "features/client/requests.feature",
    "features/client/running.feature",
    "features/client/save_and_revert.feature",
    "features/client/start.feature",
    "features/client/stop.feature",
    "features/server/commandline_interface/help.feature",
    "features/server/commandline_interface/start.feature",
    "features/server/commandline_interface/stop.feature",
    "features/server/logging.feature",
    "features/server/prime.feature",
    "features/server/requests/delete.feature",
    "features/server/requests/get.feature",
    "features/server/save_and_revert.feature",
    "features/server/templates/delete.feature",
    "features/server/templates/get.feature",
    "features/server/templates/put/put.feature",
    "features/server/templates/put/put_as_default.feature",
    "features/server/templates/put/put_with_delay.feature",
    "features/server/templates/put/put_with_pattern.feature",
    "features/server/templates/put/put_with_substitutions.feature",
    "features/server/web_user_interface.feature",
    "features/step_definitions/my_steps.rb",
    "features/support/command_line.rb",
    "features/support/env.rb",
    "features/support/hooks.rb",
    "features/support/mirage.rb",
    "full_build.sh",
    "lib/mirage/client.rb",
    "lib/mirage/client/cli_bridge.rb",
    "lib/mirage/client/client.rb",
    "lib/mirage/client/error.rb",
    "lib/mirage/client/response.rb",
    "lib/mirage/client/runner.rb",
    "lib/mirage/client/web.rb",
    "mirage.gemspec",
    "mirage_server.rb",
    "rakefile",
    "responses/default_responses.rb",
    "server/extensions/hash.rb",
    "server/extensions/object.rb",
    "server/mock_response.rb",
    "spec/cli_bridge_spec.rb",
    "spec/client_spec.rb",
    "spec/runner_spec.rb",
    "spec/spec_helper.rb",
    "test.rb",
    "views/index.erb"
  ]
  s.homepage = "https://github.com/lashd/mirage"
  s.licenses = ["MIT"]
  s.post_install_message = "\n===============================================================================\nThanks you for installing mirage.   \n\nRun Mirage with:\n\nmirage start                                   \n\nFor more information go to: https://github.com/lashd/mirage/wiki\n===============================================================================\n"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.17"
  s.summary = "Mirage is a easy mock server for testing your applications"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, [">= 0"])
      s.add_runtime_dependency(%q<childprocess>, [">= 0"])
      s.add_runtime_dependency(%q<waitforit>, [">= 0"])
      s.add_runtime_dependency(%q<thor>, [">= 0"])
      s.add_development_dependency(%q<thin>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<sinatra-contrib>, [">= 0"])
      s.add_development_dependency(%q<mechanize>, [">= 0"])
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<jruby-openssl>, [">= 0"])
    else
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<childprocess>, [">= 0"])
      s.add_dependency(%q<waitforit>, [">= 0"])
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<thin>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<sinatra-contrib>, [">= 0"])
      s.add_dependency(%q<mechanize>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<jruby-openssl>, [">= 0"])
    end
  else
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<childprocess>, [">= 0"])
    s.add_dependency(%q<waitforit>, [">= 0"])
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<thin>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<sinatra-contrib>, [">= 0"])
    s.add_dependency(%q<mechanize>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<jruby-openssl>, [">= 0"])
  end
end

