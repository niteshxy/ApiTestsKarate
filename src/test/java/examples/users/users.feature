  Feature: Test users endpoint

  Background:
    * url baseUrl

  Scenario: Get the user with username "Delphine"
    Given path 'users'
    And param username = 'Delphine'
    When method get
    Then status 200