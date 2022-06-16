Feature: Update a specific promotion
  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token

  @OF-1240
  Scenario: test for update a specific promotion with valid body params
    * def promo_id = '6283b33d0effaba5dd6a94fc'
    * def reduction = 10
    * def isActive = false

#* def promo_id = call read ('classpath:Ztrain_API/Promotion/createPromotion.feature@tags')
    Given path '/promotion/update',promo_id
    And request {reduction: '#(reduction)', isActive: '#(isActive)'}
    When method PATCH
    And  print response
    Then status 200


  @OF-1239
  Scenario: test for update a specific promotion with invalid body params
    * def promo_id = '6283b33d0effaba5dd6a94fc'
    * def reduction = ""
    * def isActive = ""

#* def promo_id = call read ('classpath:Ztrain_API/Promotion/createPromotion.feature@tags')
    Given path '/promotion/update',promo_id
    And request {reduction: '#(reduction)', isActive: '#(isActive)'}
    When method PATCH
    And  print response
    Then status 400


  @OF-1241
  Scenario: test for update a specific promotion with invalid body params
    * def promo_id = '123'
    * def reduction = 10
    * def isActive = true

#* def promo_id = call read ('classpath:Ztrain_API/Promotion/createPromotion.feature@tags')
    Given path '/promotion/update',promo_id
    And request {reduction: '#(reduction)', isActive: '#(isActive)'}
    When method PATCH
    And  print response
    Then status 500


#  Method : PATCH
#  URL : "https://ztrain-shop.herokuapp.com/promotion/update/:promotion_id"
#  Headers: {
#  "Content-Type": "application/json",
#  "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxZWZjNGIxNDVmOWIxZWY5YzZhMzZmMiIsImlhdCI6MTY0MzI3NDEzMCwiZXhwIjoxNjQzMzYwNTMwfQ.x5TxNZ-ffPhjy79Uwj7uVTuQkd-cffDZl7xqaY6xvRM"
#  }
#  Request : {
#  "reduction": 10,
#  "isActive": true
#  }
#  Reponse: status 200
#  {
#  "_id": "628b60743294589d4836c0f7",
#  "reduction": 10,
#  "createdAt": "2022-05-23T10:21:31.351Z",
#  "isActive": false,
#  "__v": 0
#  }