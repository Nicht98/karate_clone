Feature: delete shipping method

  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token
    * header content_type = 'application/json'


    @OF-1228
  Scenario: delete shipping methods
    * def shipping_id = '628b509a7765a3a1bf4cf618'
    #* def add_shipping = call read('classpath:Ztrain_API/Cart/createShipping.feature@TEST')
  #assert if an add shipping method is available

    Given path '/shipping-method/delete',shipping_id
    When method DELETE
    Then status 200
    And print response
    And match response.message contains 'suppression réussi'

  @OF-1229
  Scenario: delete shipping methods that doesn't exist
    * def shipping_id = '628b509a7'
    #* def add_shipping = call read('classpath:Ztrain_API/Cart/createShipping.feature@TEST')
  #assert if an add shipping method is available

    Given path '/shipping-method/',shipping_id
    When method DELETE
    Then status 404
    And print response
    And match response.message contains 'cette methode de livraison n'existe pas'





#Method : DELETE
#URL : "https://ztrain-shop.herokuapp.com/shipping-method/delete/:id_shipping_method"
#Headers: {
#"Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxZWZjNGIxNDVmOWIxZWY5YzZhMzZmMiIsImlhdCI6MTY0MzI3NDEzMCwiZXhwIjoxNjQzMzYwNTMwfQ.x5TxNZ-ffPhjy79Uwj7uVTuQkd-cffDZl7xqaY6xvRM"
#}
#Reponse: status 200
#{
#"message": "suppression réussi"
#}