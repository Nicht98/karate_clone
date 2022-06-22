Feature: Add product to wishlist

  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token
    * header content_type = 'application/json'
    * path '/favorites/add'

    @OF-1218
    Scenario: test add product to favorite list with valid params
      Given request {user : '#(authInfo.user)', product:'#(product)'}
      When method POST
      Then status 201
      And print response

    @OF-1219
    Scenario: test add product to favorite list with invalid body params
      * def user_id = "1234"
      * def product_id = "1234"
      Given request {user : '#(user_id)', product:'#(product_id)'}
      When method POST
      Then status 500
      And print response


#Error print with invalid output ; For parsing purpose
#    "statusCode": 400,
#    "message": [
#    "user should not be empty",
#    "product should not be empty"
#    ],
#    "error": "Bad Request"