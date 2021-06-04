Feature: A user want to sign up on the web page

Scenario: I am a user that i want to sign up
    Given I am on the home page

    When I follow "Registrati"
    Then I should be on the Registrati page

    When I fill in "Username" with "Klelia"
    And I fill in "Email" with "klelia@gmail.com"
    And I fill in "Password" with "123456"
    And I fill in "Conferma Password" with "123456"
    And I click in "Appassionato"
    And I press "Registrati"
    Then I should be on the home page
