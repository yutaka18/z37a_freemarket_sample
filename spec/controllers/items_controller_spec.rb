require 'rails_helper'

describe ItemsController, type: :controller do
  let(:user) { create(:user) }
  let(:item) { create(:item, user_id: user.id) }

  describe 'GET #index' do

    it 'populates a @item_woman of items ordered by created_at DESC' do
      item_woman = create_list(:item, 4, category_large_id: 1, user_id: user.id)
      get :index
      expect(assigns(:item_woman)).to match(item_woman.sort{ |a, b| b.created_at <=> a.created_at } )
    end

    it 'populates a @item_chanel of item ordered by created_at DESC' do
      item_chanel = create_list(:item, 4, brand: "シャネル", user_id: user.id)
      get :index
      expect(assigns(:item_chanel)).to match(item_chanel.sort{ |a, b| b.created_at <=> a.created_at })
    end

    it 'renders the :index template' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #new' do
    context 'log in' do
      before do
        login user
      end
      it 'renders the :new template' do
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
