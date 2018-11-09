require 'rails_helper'

RSpec.describe Devise::SessionsController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  before :each do
    request.env['devise.mapping'] = Devise.mappings[:user]
  end
  describe 'GET #new' do
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end
  describe "POST #create" do
    before do
      @user = FactoryBot.create(:user, password: "00000000", email: "kkk@gmail.com", password_confirmation: "00000000", phone_number: "08012345678")
    end
    it 'success process after login' do
      post :create, params: {user: {password: "00000000", email: "kkk@gmail.com"}}
      expect(controller.user_signed_in?).to be true
      expect(controller.current_user.email).to eq "kkk@gmail.com"
    end
  end
  describe "DELETE #destroy" do
    before do
      @user = FactoryBot.create(:user)
    end
    it 'success process after logout' do
      delete :destroy, params: {user: attributes_for(:user)}
      expect(controller.user_signed_in?).to be false
    end
  end
end