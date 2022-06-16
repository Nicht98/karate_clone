Feature: create promotion code for products

  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token
    * header content_type = 'application/json'
    * path '/promo-code/create'

    @OF-1230
  Scenario: create a promo code with valid body params
    * def code = 'promo10'
    * def reduction = '10'
    * def expired_date = 2023-10-29
    Given request {code : '#(code)', product:'#(reduction)', expired_date: '#(expired_date)'}
    When method POST
    Then status 201
    And print response

  * def resp = response


  @OF-1231
  Scenario: create a promo code with invalid body params
    * def code = ''
    * def reduction = ''
    * def expired_date = ''
    Given request {code : '#(code)', product:'#(reduction)', expired_date: '#(expired_date)'}
    When method POST
    Then status 400
    And print response


  @OF-1232
  Scenario: create a promo code with a date in the past
    * def code = ''
    * def reduction = ''
    * def expired_date = 2020-10-29
    Given request {code : '#(code)', product:'#(reduction)', expired_date: '#(expired_date)'}
    When method POST
    Then status 403
    And print response


  @OF-1233
  Scenario: create a promo code with the name of an existing promo-code
    * def code = 'promo10'
    * def reduction = '10'
    * def expired_date = 2023-10-29
    Given request {code : '#(code)', product:'#(reduction)', expired_date: '#(expired_date)'}
    When method POST
    Then status 500
    And print response









#  Method : POST
#  URL : "https://ztrain-shop.herokuapp.com/promo-code/create"
#  Headers: {
#  "Content-Type": "application/json",
#  "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxZWZjNGIxNDVmOWIxZWY5YzZhMzZmMiIsImlhdCI6MTY0MzI3NDEzMCwiZXhwIjoxNjQzMzYwNTMwfQ.x5TxNZ-ffPhjy79Uwj7uVTuQkd-cffDZl7xqaY6xvRM"
#  }
#  Request : {
#  "code": "toto12",
#  "reduction": 10
#  }
#  Reponse: status 201
#  {
#  "code": "toto13",
#  "reduction": 10,
#  "createdAt": "2022-05-23T09:32:09.819Z",
#  "_id": "628b54dfb0d26c97a3dd6354",
#  "__v": 0
#  }