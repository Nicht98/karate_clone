Feature: add rating to a product
  Background:
    * url base_url_dev
    * header Authorization = 'Bearer ' + authInfo.token
    * header content_type = 'application/json'
    * path '/rating/'

    @tagRate1
    Scenario: rate a product
      * def note = 10
      Given request {user : '#(authInfo.user)', product: '#(product)', note : '#(note)'}
      When method POST
      Then status 201
      And print response



#Method : POST
#URL : "https://ztrain-shop.herokuapp.com/rating/"
#Headers: {
#"Content-Type": "application/json",
#"Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxZWZjNGIxNDVmOWIxZWY5YzZhMzZmMiIsImlhdCI6MTY0MzI3NDEzMCwiZXhwIjoxNjQzMzYwNTMwfQ.x5TxNZ-ffPhjy79Uwj7uVTuQkd-cffDZl7xqaY6xvRM"
#}
#Request : {
#"user": "user_id",
#"product": "product_id",
#"note": 3
#}
#Reponse: status 201
#{
#"user": "620f561ae826bc0b18331a6e",
#"product": "620f561ae826bc0b18331a6e",
#"note": 3,
#"createdAt": "2022-05-23T10:24:09.062Z",
#"_id": "628b63e1a140eee8ddc868f6",
#"__v": 0
#}