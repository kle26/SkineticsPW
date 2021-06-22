Feature: User can cancel his account

Scenario: User modifie his password
    Given a user dermatologo
    When I am on the home page
    And I follow "Accedi"
    Then I should be on the Accedi page

    When I fill in "Email" with "kle@dermatologo.com"
    And I fill in "Password" with "123456"
    And I press "Accedi"
    Then I should be on the home page

    When I follow "Modifica Profilo"
    Then I should be on the Modifica Profilo page

    When I press "Cancella il mio account"
    Then I should be on the home page
