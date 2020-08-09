  Feature: Test Posts endpoint

  Background:
    * url baseUrl
    * def users = call read('../users/users.feature')
    * def userResponse = users.response

  Scenario: Get all the posts by user with username Delphine by using their user id

    Given path 'posts'
    And param userId = userResponse[0].id
    When method get
    Then status 200
    * def fun = function(x){ return { id: x.id } }
    * def postIds = karate.map(response, fun)


  