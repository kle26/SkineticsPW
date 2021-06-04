require 'rails_helper'

RSpec.describe Prodotto, type: :model do
  context 'Associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:reviews).dependent(:destroy) }
  end
end
