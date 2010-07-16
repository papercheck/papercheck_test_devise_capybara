Feature: Create an account and log in
  In order to log in
  As a user
  I want to create an account and log in

  Scenario: Sign in
    Given I am not authenticated
    And I am a new, authenticated user
    Then I should see "Signed in successfully."

  Scenario: Create an Account
    Given I am not authenticated
    And I am on Sign up
    And I fill in "user_email" with "joe@example.com"
    And I fill in "user_password" with "password"
    And I fill in "user_password_confirmation" with "password"
    And I press "user_submit"
    Then I should be on Sign in
    