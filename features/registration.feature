Feature: Registration of the new user

  Some basic user registration

  Scenario: Successfull user registration

    Given I am on home page
    When I open registration page
    And Submit valid user data
    Then My account is registered