Feature: Validate Status Code and response for POST request

  Background: 
    * url 'https://gorest.co.in/public/v2'
    * header Authorization = 'Bearer 007526d9efdbc07e084ff7a6d4cfcc90588fbe20641c00faebf45a7f3b2eaf33'

  Scenario: Make a simple POST request without Authorization Header and validate status code as 201
    Given url 'https://reqres.in/api/users'
    And request {"name": "morpheus","job": "leader"}
    When method post
    Then status 201
    And print response

  Scenario: Make a POST request  with Authorization Header and validate status code as 201
    Given path '/users'
    Then request {"name":"Tom Shadows12","email":"shadows121Tom@wintheiser.io","gender":"male","status":"active"}
    When method post
    Then status 201
    And print response

  Scenario: Make a POST request using a json file and Validate the response
    Given path '/users'
    And def requestbody = read("request.json")
    And request requestbody
    When method post
    Then status 201
    And match response == {"status": "active"}
