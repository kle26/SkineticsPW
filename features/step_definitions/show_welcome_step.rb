Given('I am on the homepage') do
	visit '/'
  #pending # Write code here that turns the phrase above into concrete actions
end

Then('I should see {string}') do |string|
	have_content string
  #pending # Write code here that turns the phrase above into concrete actions
end

When('I follow {string}') do |string|
	click_link(string)
  #pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be on the Regolamento page') do
	visit '/home/regolamento'
  #pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be on the Contatti page') do
	visit 'contatti'
  #pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be on the Descrizione page') do
	visit 'descrizione'
  #pending # Write code here that turns the phrase above into concrete actions
end

Then('I should be on the Sign up page') do
	visit 'sign_up'
  #pending # Write code here that turns the phrase above into concrete actions
end

