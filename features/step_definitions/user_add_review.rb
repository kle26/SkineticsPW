Given('a user appassionato') do
	@user_appassionato = User.create(email: 'kle@appassionato.com', password: '123456', role: 1 )
  #pending # Write code here that turns the phrase above into concrete actions
end

Given('a review') do
	@review = @prodotto.reviews.create(
    body: "Review",
    user_id: @user.id
    )
end

Then('I should be on the Show Prodotto page') do
  visit "/prodottos/#{@prodotto.id}"
end

Then('I should show a review') do

end
