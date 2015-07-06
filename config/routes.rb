Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # root 'articles#index'
  resources :articles

  devise_for :users

  resources :profiles, only: [:show, :index]

  resource :account, only: [:show, :edit, :update] do
    member do
      post "right_request"
    end
  end

end
