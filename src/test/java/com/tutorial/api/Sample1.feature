Feature: Test User API
  Scenario: Fetch all users
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
  Scenario: Fetch all users post
    Given url 'https://reqres.in/api/users'
    And request {name: 'morpheus',job: 'leader'}
    When method POST
    Then status 201
    And match $ contains {id:"#notnull"}
