Feature: Variables Creation in Karate Framework

  Background: Create and Initialize Variables
    * def app_name = "Google"
    * def page_lode_timeout = 20

  Scenario: To create a Variable
    Given def var_int = 10
    And def var_string = "Karate"
    Then print "Int Variable ==> ", var_int
    And print "String Variable ==> ", var_string
    * def var_int_2 = var_int + 10
    And print "New Variable ==> ", var_int_2
    And print "BackGround Section Variable ==> ", app_name , page_lode_timeout


  Scenario: Access the Variable
    * def var_int = 1
    * def var_string = "New"
    * def var_int_2 = var_int + 90
    Given print "Previous Scenario ==> ", var_int
    And print "Previous Scenario ==> ", var_string
    And print "Previous Scenario ==> ", var_int_2
    And print "BackGround Section Variable ==> ", app_name , page_lode_timeout