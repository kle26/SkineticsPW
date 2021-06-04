require 'rails_helper'

RSpec.describe User, type: :model do

  context 'Associations' do
    it { is_expected.to have_many(:prodottos) }
    it { is_expected.to have_many(:reviews) }
  end

  context "presence" do
    it { is_expected.to validate_presence_of(:email) }
  end

  describe '.from_omniauth' do
    let(:info) { OpenStruct.new({ email: user.email }) }
    let(:auth) { OpenStruct.new({ info: info }) }
    let(:user) { create(:user) }

    it 'returns or creats user' do
      expect(described_class.from_omniauth(auth)).to eq(user)
    end
  end
end
