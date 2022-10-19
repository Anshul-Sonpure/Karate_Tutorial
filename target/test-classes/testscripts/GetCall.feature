Feature: Validate Status Code for GET request

Scenario: Make a GET request and Validate status code as 200

Given url 'https://gorest.co.in/public/v2/users'
When method GET
Then status 200