Feature: get all promotion code

  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token
    * header content_type = 'application/json'

  @tagPromo2
  Scenario: get all promo code

    Given path 'promo-code'
    When method GET
    Then status 200
    And print response



#  Method : GET
#  URL : "https://ztrain-shop.herokuapp.com/promo-code/"
#  Headers: {
#  "Content-Type": "application/json",
#  "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxZWZjNGIxNDVmOWIxZWY5YzZhMzZmMiIsImlhdCI6MTY0MzI3NDEzMCwiZXhwIjoxNjQzMzYwNTMwfQ.x5TxNZ-ffPhjy79Uwj7uVTuQkd-cffDZl7xqaY6xvRM"
#  }
#  Reponse: status 200
#  [
#  {
#  "_id": "628227e76335ce77210ec327",
#  "code": "toto12",
#  "reduction": 10,
#  "createdAt": "2022-05-16T10:30:10.476Z",
#  "__v": 0
#  },
#  {
#  "_id": "628b54dfb0d26c97a3dd6354",
#  "code": "toto13",
#  "reduction": 10,
#  "createdAt": "2022-05-23T09:32:09.819Z",
#  "__v": 0
#  }
#  ]