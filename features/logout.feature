Feature: Log out as a logged user

  Background:
    Given I am on home page
    When I open registration page
    And Submit valid credentials
    Then My account is registered

  Scenario: Logging out
    Given I am on home page
    When I click on Log out button
    Then I am logged out