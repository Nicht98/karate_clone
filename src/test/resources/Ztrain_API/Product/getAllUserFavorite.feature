Feature: get list of product within the wishlist of a particular user

  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token
    * header content_type = 'application/json'

    @OF-1220
  Scenario: test get products from favorite list with correct user_id
    Given path 'favorites',authInfo.user
    When method GET
    Then status 200
    And print response

    @OF-1217
  Scenario: test get products from favorite list with invalid user_id
      * def user_id = "123"
    Given path 'favorites',user_id
    When method GET
    Then status 500
    And print response

