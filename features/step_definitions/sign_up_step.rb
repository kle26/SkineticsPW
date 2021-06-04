Given('I am on the home page') do
	visit '/'
  #pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be on the Registrati page') do
	visit 'sign_up'
  #pending # Write code here that turns the phrase above into concrete actions
end

When('I fill in {string} with {string}') do |field, value|
	fill_in(field, :with => value)
  #pending # Write code here that turns the phrase above into concrete actions
end
