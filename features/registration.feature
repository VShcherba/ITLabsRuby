Feature: Registration of the new user

  Some basic user registration

  Scenario: Successfull user registration

    Given I am on home page
    When I open registration page
    And Submit valid credentials
    Then My account is registered