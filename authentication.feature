
Feature: Local Bakery User Authentication
  As a customer of the Local Bakery website
  I want to register and login
  So that I can access bakery products and place online orders

  Background:
    Given the bakery API is available at "http://localhost:8080/SpringMvcHelloWorld"

  Scenario: Successful User Registration
    When I register a new user with the following credentials:
      | username | siru_ghimire         |
      | email    | siru@localbakery.com |
      | password | Bread@123            |
    Then the registration response status code should be 200 or 201
    And the registration response should indicate success
    And the registration response should contain message "User registered successfully"

  Scenario: Successful User Login
    Given a user exists with username "siru_ghimire" and password "Bread@123"
    When I login with username "siru_ghimire" and password "Bread@123"
    Then the login response status code should be 200 or 201
    And the login response should contain a JWT token
    And the login response should indicate success

  Scenario: Failed Login with Invalid Credentials
    When I attempt to login with username "invaliduser" and password "wrongpassword"
    Then the login response status code should be 401
    And the login response should contain message "Invalid username or password"

  Scenario: Access Protected Bakery Page Without Token
    When I attempt to access protected endpoint "/api/products" without a token
    Then the protected endpoint response status code should be 401
    And the protected endpoint response should contain message "JWT token is required"

  Scenario: Access Protected Bakery Page With Valid Token
    Given a user exists with username "bakeryuser_cucumber" and password "BakeryPass123!"
    And I have a valid JWT token for user "bakeryuser_cucumber"
    When I access protected endpoint "/api/products" with valid token
    Then the protected endpoint response status code should be 200
    And the protected endpoint response should indicate success

  Scenario: Complete Bakery User Flow
    When I register a new user with username "flowcustomer" and password "Cake@123"
    Then the registration should be successful
    When I login with username "flowcustomer" and password "Cake@123"
    Then the login should be successful
    And I should receive a JWT token
    When I use the JWT token to access protected endpoint "/api/products"
    Then I should be able to view the bakery products
