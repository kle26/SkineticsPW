FactoryBot.define do
  factory :prodotto do
    user { create(:user) }
    marca { Faker::Book.publisher }
    nome { Faker::Book.title }
  end
end
