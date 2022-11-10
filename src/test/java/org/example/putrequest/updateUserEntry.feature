Feature: To test the updation of User entry in the test application

  Background: Create and Initialize base Url
    Given url 'https://reqres.in/api/'

  Scenario: To update the User Entry for exiting user in JSON format
    Given path 'users'
    And request {"name": "pepito","job": "zion resident"}
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    * def id = response.id
    # PUT request
    Given path '/users/' + id
    And request
      """
      {
      "name": "pepe",
      "job": "zion resident"
      }
      """
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method put
    Then status 200
    And match response.name == 'pepe'
