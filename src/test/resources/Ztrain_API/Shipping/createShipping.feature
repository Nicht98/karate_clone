Feature: create a shipping method

  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token
    * header content_type = 'application/json'
    * path '/shipping-method/create'
    * def random_number =
      """
        function(max){return Math.floor(Math.random()*max)}
      """

    * def random_string =
     """
     function(s) {
       var text = "";
       var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789";
       for (var i = 0; i < s; i++)
         text += possible.charAt(Math.floor(Math.random() * possible.length));
       return text;
     }
     """

    @OF-1221
  Scenario: test create a shipping method with valid params
     * def designation = "Livraison à domicile"+random_string(3)
     * def description = "la livraison ce fera à l'addresse fourni"


    Given request {designation : '#(designation)', description:'#(description)', price:'#(random_number(100))'}*
    When method POST
    Then status 201
    And print response


  @OF-1222
  Scenario: test create a shipping method with invalid params
    * def designation = ''
    * def description = ''

    Given request {designation : '#(designation)', description:'#(description)', price:''}
    When method POST
    Then status 400
    And print response


  @OF-1223
  Scenario: test create a shipping method with the designation of an existing shipping method
    * def designation = "Livraison à domicile"
    * def description = "la livraison ce fera à l'addresse fourni"


    Given request {designation : '#(designation)', description: '#(description)', price:'#(random_number(100))'}
    When method POST
    Then status 403
    And print response
    And match response.error contains "Cette methode de livraison existe déja"



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