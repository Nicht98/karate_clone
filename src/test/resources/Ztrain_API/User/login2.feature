Feature: login
  Background:
    * url 'https://api-ztrain-dev.herokuapp.com'

    @first_tag
    Scenario:
    Given path '/auth/login'
    And request {email: 'admin@test.com', password: '12345678'}
    When method POST
    And  print response
      And print 'la resp22 est :',response.token
    Then status 201