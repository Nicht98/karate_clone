Feature: Add product to wishlist

  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token
    * header content_type = 'application/json'
    * path '/favorites/add'

    Scenario: test add product to favorite list
      Given request {user : '#(authInfo.user)', product:'#(product)'}
      When method POST
      Then status 201
      And print response
