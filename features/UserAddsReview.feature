Feature: Appassionato can add a review

Scenario: Appassionato add a review
    Given a user appassionato
    Given a user dermatologo
    Given a prodotto
    Given a review

    When I am on the home page
    And I follow "Accedi"
    Then I should be on the Accedi page

    When I fill in "Email" with "kle@appassionato.com"
    And I fill in "Password" with "123456"
    And I press "Accedi"
    Then I should be on the home page

    When I follow "Prodotto"
    Then I should be on the Prodotto page

    When I follow "Visualizza"
    Then I should be on the Show Prodotto page

    When I fill in "review" with "Prodotto molto buono"
    And I press "Inserisci"
    Then I should show a review
