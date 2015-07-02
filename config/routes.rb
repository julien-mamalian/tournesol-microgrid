Rails.application.routes.draw do
  # root 'articles#index'
  resources :articles

  devise_for :users

  resources :accounts, only: [:show]

  resource :account, only: [:edit, :update]
end
