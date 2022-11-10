Feature: Client want to see information about ...

  Background: Setup the Base path
    Given url 'https://reqres.in/api/'
    And print '================== Background ===================='

  Scenario: To get all data from application
    Given path 'unknown'
    When method get
    Then status 200

  Scenario: To get all data from application using path variable
    Given path 'unknown'
    When method get
    Then status 200
