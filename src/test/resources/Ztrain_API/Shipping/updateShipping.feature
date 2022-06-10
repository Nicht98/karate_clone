Feature: update shipping method

  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token
    * header content_type = 'application/json'


    @tagShip4
  Scenario: update shipping method
    * def designation = 'Livraison à domicile'
    * def description = 'la livraison ce fera à l'addresse fourni'
    * def shipping_id = '628b509a7765a3a1bf4cf618'
    #* def shipping_id = call read('classpath:Ztrain_API/Cart/createShipping.feature@TEST')
  #get shipping method id

    Given path '/shipping-method/update/'+':'+shipping_id
    And request {designation : '#(designation)', description:'#(description)', price:'#(cart[0].price)'}
    When method PATCH
    Then status 200
    And print response





# Method : PATCH
#URL : "https://ztrain-shop.herokuapp.com/shipping-method/update/:id_shipping_method"
#Headers: {
#"Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxZWZjNGIxNDVmOWIxZWY5YzZhMzZmMiIsImlhdCI6MTY0MzI3NDEzMCwiZXhwIjoxNjQzMzYwNTMwfQ.x5TxNZ-ffPhjy79Uwj7uVTuQkd-cffDZl7xqaY6xvRM"
#}
#Request : {
#"designation": "Livraison à domicile",
#"description": "la livraison ce fera à l'addresse fourni",
#"price": 0.3
#}
#Reponse: status 200
#{
#"_id": "628b509a7765a3a1bf4cf618",
#"designation": "Livraison à domicile",
#"description": "la livraison ce fera à l'addresse fourni",
#"price": 0.3,
#"isActive": false,
#"createdAt": "2022-05-23T08:54:37.669Z",
#"__v": 0
#}