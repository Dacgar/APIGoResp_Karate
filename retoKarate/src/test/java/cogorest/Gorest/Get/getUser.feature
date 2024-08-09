Feature: Obtain user information

  Background:
    * url 'https://gorest.co.in/'
    * header Authorization = "Bearer f0ec5a4b3d3e9b22a4591a70fa0ed46cb92afd610f7d30021e0d40440041b483"

  Scenario: get user
    # Read userId from JSON file in the target directory
    * def baseDir = java.lang.System.getProperty('user.dir').replaceAll('\\\\', '/')
    * def filePath = baseDir + '/target/userId.json'
    * def userIdDataPath = 'file:///' + filePath.replaceAll('\\\\', '/')
    * print userIdDataPath + " rutaaaaa"
    * def userIdData = read(userIdDataPath)
    * def userId = userIdData.userId


    Given path 'public/v2/users/' + userId
    When method Get
    Then status 200
    * print 'Obtained user info:', response
