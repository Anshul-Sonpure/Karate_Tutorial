Feature: Validate Status Code and response for DELETE request

  Scenario: Make a DELETE request and validate status code as 204
    Given url 'https://reqres.in/api/users/2'
    When method delete
    Then status 204