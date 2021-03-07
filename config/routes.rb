Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  root to: 'homes#top'

  scope module: :user do
    resources :users, only: [:show, :edit, :update, :destroy] do
      get '/bookmarks' => 'bookmarks#index'
      get '/favorites' => 'favorites#index'
      resource :user_contacts, only: [:create]
      get '/mytweets' => 'tweets#mytweet'
      resource :relationships, only: [:create, :destroy]
      get :follows, on: :member
      get :followers, on: :member
    end

    get '/chats/exit' => 'chats#exit'
    resources :chats, only: [:index, :show, :create, :destroy]
    get '/shops/search' => 'shops#search'

    resources :shops, only: [:index, :show] do
      resources :reviews, only: [:create, :destroy]
      resource :bookmarks, only: [:create, :destroy]
    end

    resources :tweets, only: [:index, :show, :create, :destroy] do
      resources :comments, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
    end

    resources :plans, only: [:create, :destroy]
  end

  devise_for :owners, controllers: {
    sessions: 'owners/sessions',
    registrations: 'owners/registrations',
  }

  devise_scope :owner do
    get "sign_in", :to => "owners/sessions#new"
    get "sign_out", :to => "owners/sessions#destroy"
    post 'owners/guest_sign_in', to: 'owners/sessions#new_guest'
  end

  namespace :owner do
    get 'homes/top' => 'homes/top'
    resources :shops, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    resource :owner_contacts, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
