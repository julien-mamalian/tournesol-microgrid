Rails.application.routes.draw do
  # root 'articles#index'
  resources :articles do
    resources :comments_articles
  end

  devise_for :users

  resources :accounts, only: [:show, :edit, :update]
  resource :account, only: [:edit, :update]

end
