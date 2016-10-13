Feature: Login as a registered user

  Basic login scenario

  Background:
    Given I am on home page
    When I open registration page
    And Submit valid credentials
    And My account is registered
    And I click on Log out button
    And I am logged out

  Scenario: Successfull user login


    Given I am on home page
    When I login with valid credentials
    Then I am logged in