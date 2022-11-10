Feature: To validate the GET End point
  To validate the get end point response

  Background: Setup the base url
    Given url 'https://reqres.in/api/'

  Scenario: To get the data in JSON format
    Given path 'unknown'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And match response.page == 1
    And match response.data[0].name == 'cerulean'
    And match response.data[0].year == 2000
    #validate the size of array
    And match response.data == '#[6]'
    # Contains keyword
    And match response.data[*] contains {"id": 1, "name": "cerulean", "year": 2000, "color": "#98B2D1", "pantone_value": "15-4020"}