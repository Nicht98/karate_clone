Feature: update shipping method

  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token
    * header content_type = 'application/json'
    * def shipping_id = call read('classpath:Ztrain_API/Shipping/createShipping.feature@OF-1221')


    @OF-1225
  Scenario: update shipping method with valid shipping id
    * def designation = "Livraison à domicile 237"
    * def description = "la livraison ce fera à l'addresse fourni"
    #* def shipping_id = '62b1af4e9e28289bf89c9195'


    Given path '/shipping-method/update/',shipping_id.response._id
    And request {designation : '#(designation)', description:'#(description)', price: 0.5}
    When method PATCH
    Then status 200
    And print response


  @OF-1226
  Scenario: update shipping method with invalid shipping id
    * def designation = "Livraison à domicile"
    * def description = "la livraison ce fera à l'addresse fourni"
    * def shipping_id = '123'
    #* def shipping_id = call read('classpath:Ztrain_API/Cart/createShipping.feature@TEST')


    Given path '/shipping-method/update/',shipping_id
    And request {designation : '#(designation)', description:'#(description)', price: 0.5}
    When method PATCH
    Then status 500
    And print response


  @OF-1227
  Scenario: update shipping method with invalid body params
    * def designation = ''
    * def description = ''
    #* def shipping_id = '628b509a7765a3a1bf4cf618'



    Given path '/shipping-method/update/',shipping_id.response._id
    And request {designation : '#(designation)', description:'#(description)', price:''}
    When method PATCH
    Then status 400
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