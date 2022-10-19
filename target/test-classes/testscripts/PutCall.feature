Feature: Validate Status Code and response for PUT request

  Background: 
    * url 'https://reqres.in/api/users'

  Scenario: Make a PUT request and validate status code as 200
    Given path '/2'
    Then request {"name": "Phoenix","job": "Black Cop"}
    When method put
    Then status 200
    And match response == {"updatedAt": "#ignore","name": "Phoenix","job": "Black Cop"}
