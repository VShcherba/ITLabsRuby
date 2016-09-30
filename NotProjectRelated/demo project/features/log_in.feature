Feature: Login

  As a User
  I want to be able to login
  And to see appropriate error messages in cases I made mistakes

  Background: on Login Page
    Given I am on Login page

  @positive
  Scenario: Positive Login
    When I submit valid credentials "asdf"/"asdf"
    Then I am logged in

  @negative
  Scenario Outline: Negative Login
    When I submit not valid credentials "<login>"/"<password>"
    Then there is error message "<message>"

    Examples:
      | login | password | message                  |
      |       |          | Invalid user or password |
      | qqqqq |          | Invalid user or password |
      |       | qqqqqq   | Invalid user or password |
      | qqqqq | qqqqqq   | Invalid user or password |