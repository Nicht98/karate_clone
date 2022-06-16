Feature: get info on a specific promotion code for products

  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token
    * header content_type = 'application/json'

  @OF-1235
  Scenario: test info for a specific promo code
    * def code = 'toto13'
    #* def code = call read('classpath:Ztrain_API/cart/createPromoCode.feature@Tag')

    Given path 'promo-code',code
    When method GET
    Then status 200
    And print response


  @OF-1236
  Scenario: test info for a non-existent promo code
    * def code = 'toto'
    #* def code = call read('classpath:Ztrain_API/cart/createPromoCode.feature@Tag')
    Given path 'promo-code',code
    When method GET
    Then status 200
    And print response


#
#  Method : GET
#  URL : "https://ztrain-shop.herokuapp.com/promo-code/:code"
#  Headers: {
#  "Content-Type": "application/json",
#  "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxZWZjNGIxNDVmOWIxZWY5YzZhMzZmMiIsImlhdCI6MTY0MzI3NDEzMCwiZXhwIjoxNjQzMzYwNTMwfQ.x5TxNZ-ffPhjy79Uwj7uVTuQkd-cffDZl7xqaY6xvRM"
#  }
#  Reponse: status 200
#  {
#  "_id": "628b54dfb0d26c97a3dd6354",
#  "code": "toto13",
#  "reduction": 10,
#  "createdAt": "2022-05-23T09:32:09.819Z",
#  "__v": 0
#  }