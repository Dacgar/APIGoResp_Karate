Feature: Update user exist
#####Scenario Scenario Outline:###
  Background:
    * url 'https://gorest.co.in/'
    * request {"email": "#(email)", "name": "#(name)", "gender": "#(gender)", "status": "#(status)"}
    * header Authorization = "Bearer f0ec5a4b3d3e9b22a4591a70fa0ed46cb92afd610f7d30021e0d40440041b483"

  Scenario Outline: Update user exist

    * def baseDir = java.lang.System.getProperty('user.dir').replaceAll('\\\\', '/')
    * def filePath = baseDir + '/target/userId.json'
    * def userIdDataPath = 'file:///' + filePath.replaceAll('\\\\', '/')
    * print userIdDataPath + " rutaaaaa"
    * def userIdData = read(userIdDataPath)
    * def userId = userIdData.userId


    Given path 'public/v2/users/' + userId
    When method Put
    Then status 200
    Examples:
      | email        | name        | gender | status |
      | naniaaa@ga.co | Luz Adriana | female   | active |