Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'users' => 'users/registrations#index'
  end
  root  'items#index'
  resources  :items do
    get 'buy' => 'items#buy'
  end
  resources  :users do
    resources :destinations, only: [:edit, :new, :create]
  end

  resource   :user
  scope module: :users do
    resource :card, only: :show
    resources :profiles, only: [:edit, :index]
    resource :identification, only: :edit
    resource :sell, only: [:show, :edit]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
