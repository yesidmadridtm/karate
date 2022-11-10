Feature: Validate the JSON schema
  To validate the JSON schema for POST

  Background: Create and Initialize base Url
    Given url 'https://reqres.in/api/'

  Scenario: To create the Job Entry in JSON format
    Given path 'users'
    * def body = read("data/userEntry.json")
    And request body
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    And match response ==
      """
      {
        "name": "#string",
        "job": "#string",
        "id": "#string",
        "createdAt": "#string"
      }
      """