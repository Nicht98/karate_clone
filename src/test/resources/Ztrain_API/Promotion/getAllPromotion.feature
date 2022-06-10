Feature: get all promotion
  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token

  @tagPr2
  Scenario: test for get all promo

    Given path '/promotion/'
    When method Get
    And  print response
    Then status 200


#  Method : GET
#  URL : "https://ztrain-shop.herokuapp.com/promotion/"
#  Headers: {
#  "Content-Type": "application/json",
#  "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxZWZjNGIxNDVmOWIxZWY5YzZhMzZmMiIsImlhdCI6MTY0MzI3NDEzMCwiZXhwIjoxNjQzMzYwNTMwfQ.x5TxNZ-ffPhjy79Uwj7uVTuQkd-cffDZl7xqaY6xvRM"
#  }
#  Reponse: status 200
#  [
#  {
#  "_id": "6283b33d0effaba5dd6a94fc",
#  "reduction": 10,
#  "createdAt": "2022-05-17T14:36:08.364Z",
#  "isActive": true,
#  "__v": 0
#  },
#  {
#  "_id": "628b60743294589d4836c0f7",
#  "reduction": 10,
#  "createdAt": "2022-05-23T10:21:31.351Z",
#  "isActive": false,
#  "__v": 0
#  }
#  ]