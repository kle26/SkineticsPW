require 'rails_helper'

RSpec.describe "ProdottosControllers", type: :request do
  describe '#index' do
    subject { get 'http://localhost:3000//prodottos' }

    context 'when request for all prodottos' do
      it 'returns 200 status' do
        expect(subject).to be 200
      end
    end

    it "redirects to the prodottos" do
      get "/prodottos"
      expect(response).to render_template(:index)
      expect(response.status).to be(200)
    end
  end

  describe '#show' do
    let(:prodotto) { create(:prodotto) }

    it "redirects to the prodotto show page" do
      get prodotto_url(prodotto.id)
      expect(response).to render_template(:show)
      expect(response.status).to be(200)
    end
  end

  describe '#update' do
    let(:prodotto) { create(:prodotto) }
    let(:user) { create(:user) }

    before do
      allow_any_instance_of(ApplicationController).to receive(:authenticate_user!).and_return(user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    end

    it "redirects to the prodotto edit page" do
      put prodotto_url(prodotto.id)
      expect(response.status).to be(302)
    end
  end

  describe '#destroy' do
    let(:prodotto) { create(:prodotto) }
    let(:user) { create(:user) }

    before do
      allow_any_instance_of(ApplicationController).to receive(:authenticate_user!).and_return(user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    end

    it "redirects to the prodotto index page" do
      delete prodotto_url(prodotto.id)
      expect(response.status).to be(302)
    end
  end

  describe '#create' do
    let(:user) { create(:user) }
    let(:params) do
      {
        prodotto:
        {
          none: 'abc',
          marca: 'xyz',
          user_id: user.id
        }
      }
    end

    before do
      allow_any_instance_of(ApplicationController).to receive(:authenticate_user!).and_return(user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    end

    it "redirects to the prodotto show page" do
      post prodottos_url(params)
      expect(response.status).to be(302)
    end
  end
end
