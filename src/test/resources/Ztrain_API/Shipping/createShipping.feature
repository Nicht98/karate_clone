Feature: create a shipping method

  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token
    * header content_type = 'application/json'
    * path '/shipping-method/create'

    @tagShip1
  Scenario: test add product to favorite list
    * def designation = 'Livraison à domicile'
    * def description = 'la livraison ce fera à l'addresse fourni'
    * def cart = call read('classpath:Ztrain_API/Cart/addCart.feature@TEST_OF-760')
    #add the corresponding APi for the price

    Given request {designation : '#(designation)', description:'#(description)', price:'#(cart[0].price)'}
    When method POST
    Then status 201
    And print response


#  Method : POST
#  URL : "https://ztrain-shop.herokuapp.com/shipping-method/create"
#  Headers: {
#  "Content-Type": "application/json",
#  "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxZWZjNGIxNDVmOWIxZWY5YzZhMzZmMiIsImlhdCI6MTY0MzI3NDEzMCwiZXhwIjoxNjQzMzYwNTMwfQ.x5TxNZ-ffPhjy79Uwj7uVTuQkd-cffDZl7xqaY6xvRM"
#  }
#  Request : {
#  "designation": "Livraison à domicile",
#  "description": "la livraison ce fera à l'addresse fourni",
#  "price": 0
#  }
#  Reponse: status 201
#  {
#  "designation": "Livraison à domicile",
#  "description": "la livraison ce fera à l'addresse fourni",
#  "price": 0,
#  "isActive": false,
#  "createdAt": "2022-05-12T10:28:19.264Z",
#  "_id": "627ce1b06ba58352b9229552",
#  "__v": 0
#  }