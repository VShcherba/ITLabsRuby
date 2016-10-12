Feature: Login as a registered user

  Basic login scenario

  Background:
    Given I am on home page
    When I open registration page
    And Submit valid credentials
    Then My account is registered

  Scenario: Successfull user login


    Given I am on home page
    When I login with valid credentials
    Then I am logged in