Feature: get list of product into wishlist

  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token
    * header content_type = 'application/json'

    @tagFav1
  Scenario: test get products from favorite list
    Given path 'favorites',authInfo.user
    When method GET
    Then status 200
    And print response
