Given('a user dermatologo') do
	@user = User.create(email: 'kle@dermatologo.com', password: '123456' )
  #pending # Write code here that turns the phrase above into concrete actions
end

Given('a prodotto') do
	@prodotto = @user.prodottos.create!(
    marca: 'Kerastase',
    nome: 'Schiuma',
    categoria: 'Capelli',
    contenuto: "Aqua / Water - Isobutane - Propylene Glycol - Polyquaternium-4 - Butane - Propane - Peg-40 Hydrogenated Castor Oil - Phenoxyethanol - Laureth-4 - Caprylyl Glycol - Calcium Pantothenate - Ethylhexyl Methoxycinnamate - Safflower Glucoside - Arginine - Glutamic Acid - Cetrimonium Chloride - Serine - Hexyl Cinnamal - Hydroxypropyltrimonium Hydrolyzed Wheat Protein - Linalool - Citronellol - Alpha-Isomethyl Ionone - Sodium Hyaluronate - 2-Oleamido-1,3-Octadecanediol - Geraniol - Parfum / Fragrance",
    utilizzo: "Agitare il flacone prima dell'uso. Prendere un'arancia di prodotto, distribuirla su lunghzze e punte umide in maniera uniforme, aiutandosi con un pettine. Iniziare lo styling senza risciacquare.",
    media_voti: '4',
  )

  #pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be on the Accedi page') do
	visit 'sign_in'
  #pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be on the home page') do
  visit '/'
end

Then('I should be on the New Prodotto page') do
  visit '/prodottos/new'
end

When('I attach {string} to {string}') do |string, string2|
  attach_file(string, string2)
end

Then('I should be on the Prodotto page') do
  visit '/prodottos'
end

Then('I select {string} from {string}') do |option, box|
  select(option, from: "prodotto[#{box}]")
end
