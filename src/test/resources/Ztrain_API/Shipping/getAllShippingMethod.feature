Feature: get all shipping method

  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token
    * header content_type = 'application/json'


    @tagShip3
  Scenario: get shipping methods
    #* def cart = call read('classpath:Ztrain_API/Cart/createShipping.feature@TEST')
  #assert if an add shipping method is available

    Given path '/shipping-method/'
    When method GET
    Then status 200
    And print response


#  Method : GET
#  URL : "https://ztrain-shop.herokuapp.com/shipping-method/"
#  Headers: {
#  "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxZWZjNGIxNDVmOWIxZWY5YzZhMzZmMiIsImlhdCI6MTY0MzI3NDEzMCwiZXhwIjoxNjQzMzYwNTMwfQ.x5TxNZ-ffPhjy79Uwj7uVTuQkd-cffDZl7xqaY6xvRM"
#  }
#  Reponse: status 200
#  [
#  {
#  "_id": "627cd09ad3baa39f455afa5e",
#  "designation": "Livraison à domicile",
#  "description": "la livraison ce fera à l'addresse fourni",
#  "price": 0,
#  "createdAt": "2022-05-12T09:17:06.844Z",
#  "__v": 0
#  }
#  ]