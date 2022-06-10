Feature: get product rate by the user
  Background:
    * url 'https://simple-books-api.glitch.me'
    * header content_type = 'application/json'
    #* path '/books/'

  @testBooks2
  Scenario: list of products rate by a user

    Given path 'books'
    When method Get
    Then status 200
    And match response[*].id contains 1
    And print response

  @testBooks
  Scenario: list of products rate by a user
    #* def bookId = 2
    * def result = call read('classpath:Ztrain_API/User/testbooks.feature@testBooks2')
    #* def result = karate.callSingle('classpath:Ztrain_API/User/testbooks.feature@testBooks2')

    Given path 'books',result.response[0].id
    And print 'le truc la vaut',result.response[0].id
    When method Get
    Then status 200
    #And match response[*].id contains 1
    And print response.id == 1

  #https://simple-books-api.glitch.me/books/:bookid
  #'https://simple-books-api.glitch.me/books/2'