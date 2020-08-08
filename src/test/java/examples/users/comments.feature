  Feature: Test Comments endpoint

  Background:
    * url baseUrl
    * def posts = call read('./posts.feature')
    * def postIds = posts.postIds

  Scenario Outline: Get all the comments by for username Delphine with post Id <id>
    Given path 'comments'
    And param postId = <id>
    When method get
    Then status 200
    * print 'email --- ', response
    And match response contains {name: '#string', postId: '#number', id: '#number', body: '#string', email: '#regex ^[^@\s]+@[^@\s\.]+\.[^@\.\s]+$'}
  Examples:
    |postIds|

  