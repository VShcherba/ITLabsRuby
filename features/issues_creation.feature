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

  Scenario Outline: User is adding new feature
    When I open issues tab
    And I select <issue type> type
    And I submit data for issue
    Then Issue with name <issue name> is created

  Examples:
    | issue type | issue name    |
    | Feature    | First feature |
    | Bug        | First bug     |
    | Support    | First support issue |