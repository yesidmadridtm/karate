Feature: To test the Get end point with Query Parameter
  GET /normal/webapi/find

  Background: Create and Initialize base Url
    Given url 'https://reqres.in/api/'

  Scenario: To get the data using Query Parameter
    Given path 'users'
    And param page = 2
    And params {page:'#(page)'}
    And headers {Accept:'application/json'}
    When method get
    Then status 200