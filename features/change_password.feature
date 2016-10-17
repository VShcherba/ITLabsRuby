Feature: User is able to change his password

  Background:
    Given I am on home page
    When I open registration page
    And Submit valid credentials
    Then My account is registered


  Scenario: Successfull change of password
    Given I am on home page
    When I open my account page
    And I click change password link
    And Submit new password
    Then My password is updated