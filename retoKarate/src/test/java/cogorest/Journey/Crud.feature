Feature: Create and update user

  Background:
    * url 'https://gorest.co.in/public-api'

  Scenario: Execute all automation scenarios

    * call read('classpath:cogorest/Gorest/Post/createUser.feature')

    * call read('classpath:cogorest/Gorest/PutPatch/updateUser.feature')

    * call read('classpath:cogorest/Gorest/Get/getUser.feature')

    * call read('classpath:cogorest/Gorest/Delete/deleteUser.feature')