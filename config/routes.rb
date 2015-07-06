Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # root 'articles#index'
  resources :articles

  devise_for :users

  resources :accounts, only: [:show, :edit, :update]
  resource :account, only: [:edit, :update]

end
