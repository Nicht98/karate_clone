Feature: get a specific promotion
  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token

  @OF-1243
  Scenario: test for get information on a specific promotion
    * def promo_id = '6283b33d0effaba5dd6a94fc'
#* def promo_id = call read ('classpath:Ztrain_API/Promotion/createPromotion.feature@tags')
    Given path '/promotion/',promo_id
    When method Get
    And  print response
    Then status 200

  @OF-1244
  Scenario: test for get information on a non-existent specific promotion
    * def promo_id = '123'
#* def promo_id = call read ('classpath:Ztrain_API/Promotion/createPromotion.feature@tags')
    Given path '/promotion/',promo_id
    When method Get
    And  print response
    Then status 500



#  Method : GET
#  URL : "https://ztrain-shop.herokuapp.com/promotion/:promotion_id"
#  Headers: {
#  "Content-Type": "application/json",
#  "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxZWZjNGIxNDVmOWIxZWY5YzZhMzZmMiIsImlhdCI6MTY0MzI3NDEzMCwiZXhwIjoxNjQzMzYwNTMwfQ.x5TxNZ-ffPhjy79Uwj7uVTuQkd-cffDZl7xqaY6xvRM"
#  }
#  Reponse: status 200
#  {
#  "_id": "6283b33d0effaba5dd6a94fc",
#  "reduction": 10,
#  "createdAt": "2022-05-17T14:36:08.364Z",
#  "isActive": true,
#  "__v": 0
#  }