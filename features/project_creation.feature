Feature: User is able to create new project

  Background:
    Given I am on home page
    When I open registration page
    And Submit valid credentials
    Then My account is registered


  Scenario: Successfull creation of the new project
    Given I am on home page
    When I open projects page
    And I click create new project
    And Submit data for new project
    Then New project is created