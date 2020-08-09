  Feature: Test Comments endpoint

  Background:
    * url baseUrl
    * def posts = call read('../posts/posts.feature')
    * def postIds = posts.postIds

  Scenario Outline: Get all the comments by for username Delphine with post Id <id> and validate the email format in response
    Given path 'comments'
    And param postId = <id>
    When method get
    Then status 200
    And match response contains {name: '#string', postId: '#number', id: '#number', body: '#string', email: '#regex ^[^@\s]+@[^@\s\.]+\.[^@\.\s]+$'}
  Examples:
    |postIds|

  