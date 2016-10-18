Feature: User is able to create different types of issues for the project

  Background:
    Given I am on home page
    When I open registration page
    And Submit valid credentials
    Then My account is registered
    And I am on home page
    And I open projects page
    And I click create new project
    And Submit data for new project
    Then New project is created

  Scenario Outline: Example
    When I open issues tab
    And I create <issue type>
    Then Issue with name <issue name> is created

  Examples:
    |example description| issue type | issue name    |
    |User is adding feature| Feature    | First feature |
    |User is adding bug| Bug        | First bug     |
    |User is adding support issue| Support    | First support issue |