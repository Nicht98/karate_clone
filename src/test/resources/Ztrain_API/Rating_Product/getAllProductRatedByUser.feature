Feature: get product rate by the user
  Background:
    * url base_url
    * header Authorization = 'Bearer ' + authInfo.token
    * header content_type = 'application/json'
    * path '/rating/'

    @tagRate2
  Scenario: list of products rate by a user

    #Given url base_url_dev + '/rating/:'+authInfo.user_id
    Given path authInfo.user_id
    When method GET
    Then status 201
    And print response



#
#  Method : GET
#  URL : "https://ztrain-shop.herokuapp.com/rating/:user_id"
#  Headers: {
#  "Content-Type": "application/json",
#  "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxZWZjNGIxNDVmOWIxZWY5YzZhMzZmMiIsImlhdCI6MTY0MzI3NDEzMCwiZXhwIjoxNjQzMzYwNTMwfQ.x5TxNZ-ffPhjy79Uwj7uVTuQkd-cffDZl7xqaY6xvRM"
#  }
#  Reponse: status 201
#  [
#  {
#  "_id": "628213593802e479480aba17",
#  "user": "620f561ae826bc0b18331a6e",
#  "product": {
#  "_id": "6201241e177f015c515b8fa7",
#  "createAt": "2022-02-07T12:59:16.049Z",
#  "comments": [],
#  "price": 9.99,
#  "image": [
#  "https://medias.maisonsdumonde.com/image/upload/q_auto,f_auto/w_500/img/yucca-artificiel-pot-noir-1000-13-10-190209_1.jpg"
#  ],
#  "description": "Type d'unité: lot (20 pièces / lot) poids du colis: 0,010 kg (. 0.02lb) Taille Package: 10cm x 10cm x 10cm (3.94in x 3.94in x 3.94in) Période pleine floraison: Été Type : Plantes Blooming de applicable Constellation: Poissons Flowerpot: plantées en Pot Cultiva",
#  "name": "Yucca Elephantipes",
#  "__v": 0,
#  "isActive": true,
#  "category": "6267bb40774b917c18ef6a5d",
#  "id": "6201241e177f015c515b8fa7"
#  },
#  "note": 3,
#  "createdAt": "2022-05-16T09:03:07.702Z",
#  "__v": 0
#  }
#  ]