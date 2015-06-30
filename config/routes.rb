Rails.application.routes.draw do
  get 'accounts/show'

  get 'accounts/edit'

  get 'accounts/update'

  # root 'articles#index'
  resources :articles

  devise_for :users

  resource :account, only: [:show, :edit, :update]
end
