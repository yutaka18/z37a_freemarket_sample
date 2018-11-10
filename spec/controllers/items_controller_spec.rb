require 'rails_helper'

describe ItemsController, type: :controller do
  let(:user) { create(:user) }
  let(:item) { create(:item) }

  describe 'GET #new' do
    context 'log in' do
      before do
        login user
      end
      it "renders the :new template" do
        get :new
        expect(response).to render_template :new
      end
    end

    context 'not log in' do
      it "redirects to user session path" do
        get :new
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe 'POST #create' do
    let(:params) { { user_id: user.id, item: attributes_for(:item) }}

    context 'log in' do
      before do
        login user
      end

      context 'can save' do
        subject {
          post :create,
          params: params
        }

        it 'count up message' do
          expect { subject }.to change(Item, :count).by(1)
        end

        it 'redirects to index' do
          subject
          expect(response).to redirect_to(action: :index)
        end
      end

      context 'can not save' do
        let(:invalid_params) { { user_id: user.id, item: attributes_for(:item, name: nil, content: nil) }}
        subject {
          post :create,
          params: invalid_params
        }

        it 'does not count up' do
          expect{ subject }.not_to change(Item, :count)
        end

        it 'renders new' do
          subject
          expect(response).to redirect_to(action: :new)
        end
      end
    end
  end
end
