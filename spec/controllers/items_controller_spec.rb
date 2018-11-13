require 'rails_helper'

describe ItemsController, type: :controller do
  let(:user) { create(:user) }
  let(:item) { create(:item) }
  let(:category) { create(:category) }
  let(:mitem) { create(:mitem) }
  let(:sitem) { create(:sitem) }

  describe 'GET #index' do
    context 'is assigns' do
      it '@item_woman' do
        items = create_list(:item, 4, category_id: category.id, mitem_id: mitem.id, sitem_id: sitem.id, user_id: user.id )
        get :index, params: { category_id: 1 }
        expect(assigns(:item_woman)).to match(items.sort{ |a, b| b.created_at <=> a.created_at })
      end

      it '@item_chanels' do
        items = create_list(:item, 4, brand: "シャネル", category_id: category.id, mitem_id: mitem.id, sitem_id: sitem.id, user_id: user.id )
        get :index
        expect(assigns(:item_chanels)).to match(items.sort{ |a, b| b.created_at <=> a.created_at })
      end
    end

    it 'renders the :index template' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #new' do
    context 'log in' do
      it 'renders the :new template' do
        login user
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
    context 'log in' do
      before do
        login user
      end

      context 'can save' do
        let(:params) { { category_id: category.id, mitem_id: mitem.id, sitem_id: sitem.id, item: attributes_for(:item) } }
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
