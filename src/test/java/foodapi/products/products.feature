Feature: products test script

  Scenario: get all UK products
    * header Authorization = call read('basic-auth.js') { username: 'username', password: 'password' }
    Given url foodApiUrl
    And path 'v3/UK/products'
    When method get
    Then status 200
    And match header Content-Type == 'application/json;charset=utf-8'
    And match response != '#[0]'


  Scenario: get product UK008081
    * header Authorization = call read('basic-auth.js') { username: 'username', password: 'password' }
    * param detail = 'max'
    Given url foodApiUrl
    And path 'v3/UK/products/UK008081'
    When method get
    Then status 200
    And match header Content-Type == 'application/json;charset=utf-8'
    And match response == '#[1]'
    And match response[0].productServes == '#present'
    And match response[0].recipeType == '#[]'