Feature: Create a promotion
  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token

  @OF-1237
  Scenario: test for promotion creation with valid params

    * def reduction = 10
    * def isActive = true

    Given path '/promotion/create'
    And request {reduction: '#(reduction)', isActive: '#(isActive)'}
    When method POST
    And  print response
    Then status 201

    * def resp = response


    @OF-1238
  Scenario: test for promotion creation with invalid params

    * def reduction = ""
    * def isActive = ""

    Given path '/promotion/create'
    And request {reduction: '#(reduction)', isActive: '#(isActive)'}
    When method POST
    And  print response
    Then status 400







#  Method : POST
#  URL : "https://ztrain-shop.herokuapp.com/promotion/create"
#  Headers: {
#  "Content-Type": "application/json",
#  "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxZWZjNGIxNDVmOWIxZWY5YzZhMzZmMiIsImlhdCI6MTY0MzI3NDEzMCwiZXhwIjoxNjQzMzYwNTMwfQ.x5TxNZ-ffPhjy79Uwj7uVTuQkd-cffDZl7xqaY6xvRM"
#  }
#  Request : {
#  "reduction": 10,
#  "isActive": true
#  }
#  Reponse: status 201
#  {
#  "reduction": 10,
#  "createdAt": "2022-05-23T10:21:31.351Z",
#  "isActive": true,
#  "_id": "628b60743294589d4836c0f7",
#  "__v": 0
#  }