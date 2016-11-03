@project
Feature: User is able to manage versions of the project

  Background:
    Given I am on home page
    When I open registration page
    And Submit valid credentials
    Then My account is registered
    And I am on home page
    And I open projects page
    And I click create new project
    And Submit form with random data
    Then New project is created

  Scenario: Successfull creation of the new project with version
    When I open versions page
    And I create new version
    And Create new version with name First version
    Then New version of the project with name First version is created