require 'rails_helper'

describe DestinationsController do
  let(:user) { create(:user)}
  describe 'GET #new' do
    context 'log in' do
      before do
        login user
        get :new, params: { user_id: user.id }
      end
      it 'assigns @destination' do
        expect(assigns(:destination)).to be_a_new(Destination)
      end
      it 'assigns @user' do
        expect(assigns(:user)).to eq user
      end
      it 'redners new' do
        expect(response).to render_template :new
      end
    end
  end
  describe '#create' do
    let(:user) { create(:user)}
    let(:params) { { user_id: user.id, destination: attributes_for(:destination) } }
    context 'log in' do
      before do
        login user
      end
      context 'can save' do
        subject {
          post :create,
          params: params
        }
        it 'count up destination' do
          expect{ subject }.to change(Destination, :count).by(1)
        end
        it 'redirects to root_path' do
          subject
          expect(response).to redirect_to(root_path)
        end
      end
      context 'can not save' do
        let(:invalid_params) { { user_id: user.id, destination: attributes_for(:destination, first_name: nil, last_name: nil, first_name_kana: nil, last_name_kana: nil, post_number: nil, prefecture: nil, city: nil, address: nil, building: nil) } }
        subject {
          post :create,
          params: invalid_params
        }
        it 'does not count up' do
          expect{ subject }.not_to change(Destination, :count)
        end
        it 'renders new' do
          subject
          expect(response).to render_template :new
        end
      end
    end
  end
end