Feature: Show Pagina Welcome

Scenario: Seeing the homepage for a new user non registrato
    Given I am on the homepage
    Then I should see "Benvenuto su Skinetics!"

    When I follow "Regolamento"
    Then I should be on the Regolamento page

    When I follow "Contattaci ora!"
    Then I should be on the Contatti page

    When I follow "Descrizione"
    Then I should be on the Descrizione page

    When I follow "Registrati ora!"
    Then I should be on the Sign up page