Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root 'home#index'


  resources :profiles do
    member do
      get :follow
      get :unfollow
    end
  end

  resources :articles do
    member do
      put "like", to: "articles#upvote"
       put "dislike", to: "articles#downvote"
    end
  end

  resources :articles do
    resources :comments_articles do
      member do
        put "like", to: "comments_articles#upvote"
        put "dislike", to: "comments_articles#downvote"
      end
    end
  end


  resources :projects do
    member do
      put "like", to: "projects#upvote"
      put "dislike", to: "projects#downvote"
    end
  end


  resources :projects do
    resources :projects_comments do
      member do
        put "like", to: "projects_comments#upvote"
        put "dislike", to: "projects_comments#downvote"
      end
    end
  end

  # resources :articles do
  #   resources :comments_articles
  # end

  # resources :projects do
  #   resources :projects_comments
  # end

  devise_for :users

  resources :profiles, only: [:show, :index]

  resource :account, only: [:show, :edit, :update] do
    member do
      post "right_request"
    end
  end
end

