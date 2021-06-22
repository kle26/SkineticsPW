Feature: Dermatologo can add a prodotto

Scenario: Dermatologo add a prodotto
    Given a user dermatologo
    Given a prodotto

    When I am on the home page
    And I follow "Accedi"
    Then I should be on the Accedi page

    When I fill in "Email" with "kle@dermatologo.com"
    And I fill in "Password" with "123456"
    And I press "Accedi"
    Then I should be on the home page

    When I follow "Inserisci prodotto"
    Then I should be on the New Prodotto page

    When I fill in "Marca" with "Kerastase"
    And I fill in "Nome" with "Schiuma"
    And I select "Capelli" from "categoria"
    And I fill in "Contenuto" with "Aqua / Water - Isobutane - Propylene Glycol - Polyquaternium-4 - Butane - Propane - Peg-40 Hydrogenated Castor Oil - Phenoxyethanol - Laureth-4 - Caprylyl Glycol - Calcium Pantothenate - Ethylhexyl Methoxycinnamate - Safflower Glucoside - Arginine - Glutamic Acid - Cetrimonium Chloride - Serine - Hexyl Cinnamal - Hydroxypropyltrimonium Hydrolyzed Wheat Protein - Linalool - Citronellol - Alpha-Isomethyl Ionone - Sodium Hyaluronate - 2-Oleamido-1,3-Octadecanediol - Geraniol - Parfum / Fragrance"
    And I fill in "Utilizzo" with "Agitare il flacone prima dell'uso. Prendere un'arancia di prodotto, distribuirla su lunghzze e punte umide in maniera uniforme, aiutandosi con un pettine. Iniziare lo styling senza risciacquare."
    And I fill in "Media voti" with "4"
    And I attach "prodotto[image]" to "/Users/dev/Downloads/3c4f25f3-95cd-4e5d-985f-6c4dad719108.jpeg"
    And I press "Create Prodotto"
    Then I should be on the Prodotto page


