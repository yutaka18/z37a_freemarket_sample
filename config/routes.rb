Rails.application.routes.draw do
  devise_for :users
  root  'items#index'
  resources  :items do
    get 'buy'
  end

  resource   :user
  scope module: :users do
    resource :card, only: :show
    resource :profile, only: :edit
    resource :identification, only: :edit
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
