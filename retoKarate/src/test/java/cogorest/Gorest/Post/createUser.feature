Feature: Create a new user

  Background:
    * url 'https://gorest.co.in/'
    * header Authorization = "Bearer f0ec5a4b3d3e9b22a4591a70fa0ed46cb92afd610f7d30021e0d40440041b483"

  Scenario Outline: Create a new user
    Given path 'public/v2/users'
    And request {"email": "#(email)", "name": "#(name)", "gender": "#(gender)", "status": "#(status)"}
    When method Post
    Then status 201
    And match response.status == '#(status)'
    * def userId = response.id
    * print 'Created user id:', userId

    # Save userId to a JSON file in the target directory
    * def userIdJson = { userId: '#(userId)' }
    * karate.write(userIdJson, 'userId.json')

    Examples:
      | email           | name   | gender | status |
      | prueba@gamil.co | Carlos | male   | active |
