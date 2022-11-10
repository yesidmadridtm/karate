Feature: To test the delete end point

  Background: Create and Initialize base Url
    Given url 'https://reqres.in/api/'

  Scenario: To delete the user entry from application using user id
    Given path 'users'
    And request {"name": "pepito","job": "zion resident"}
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    * def id = response.id
    Given path '/users/' + id
    And headers {Accept : 'application/json'}
    When method delete
    Then status 204
