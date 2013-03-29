Feature: Parts of a response can be substitued for values found in the request body or query string.
  This allows dynamic content to be sent back to a client.

  To do this, substitution, matchers must be put in the the response value.

  Either a string literal or a regex can be used in between ${} to find a match

  Scenario: A response template populated from matches found in the request body using a regex
    Given the following template template:
    """
      {
         "response":{
            "body":"Hello ${name}"
         }
      }
    """
    And 'response.body' is base64 encoded
    And the template is sent using PUT to 'http://localhost:7001/mirage/templates/greeting'
    When I send GET to 'http://localhost:7001/mirage/responses/greeting' with parameters:
      |name|Joe  |
    Then 'Hello Joe' should be returned