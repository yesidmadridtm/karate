Feature: To Validate Get response

  Background: Setup the Base path
    Given url 'https://reqres.in/api/'

  Scenario: To get all data in JSON format
    Given path 'unknown'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response