Feature: Catégory product

  Background:
    * url 'https://api-ztrain-dev.herokuapp.com'
    * path '/category/create'
    * header Authorization = 'Bearer ' + authInfo.token


  @TEST_OF-72
  Scenario Outline: Test the create category product api call with valid parameters
    * def categoryRq =
    """
    {
      name: "<name>",
      description: "<description>",
    }
    """
    Given request categoryRq
    And header content-type = 'application/JSON'
    When method POST
    And print response
    Then status 201

    * def resp = response

    Examples:
      |name                           |description                                                                                                                         |
      |Smartphone samsung galaxy      |This is a description for the smartphone samsung galaxy catégory worth more than hundred characters, Smartphone samsung galaxy A80+ |

