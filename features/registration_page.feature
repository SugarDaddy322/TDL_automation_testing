@registration_page
Feature: As a visitor I want to register an account
  Background:
    Given I am on the account create page


  @wip
  Scenario: Register account from positive test case
    When I fill the first name input field with "Droopa"
    When I fill the last name input field with "Gribkov"
    When I fill the email input field with "droopagribkov1@gmail.com"
    When I fill the address input field with "Baker Street 1"
    When I fill the city input field with "Dallas"
    When I fill the zipcode input field with "556000"
    When I fill the login input field with "SuperDroopa322"
    When I fill the password input field with "secretpassword"
    When I fill the password confirm input field with "secretpassword"
    When I select in country dropdown "United States"
    When I select in region dropdown "Texas"
    When I click on Privacy Policy agreement
    When I click on Continue button

    Then I see Registered account page

