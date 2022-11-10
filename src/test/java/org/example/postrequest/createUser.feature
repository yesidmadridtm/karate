Feature: To create the Job entry in the application
  Use POST /normal/webapi/add to create job entry in the application

  Background: Create and Initialize base Url
    Given url 'https://reqres.in/api/'

  Scenario: To create the Job Entry in JSON format
    Given path 'users'
    * def body = read("data/userEntry.json")
    And request body
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    And print response
    And match response.job == "leader"
