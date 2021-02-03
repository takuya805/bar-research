Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root to: 'homes#top'

  scope module: :user do
    resources :users, only: [:show, :edit, :update, :destroy] do
      get '/bookmarks' => 'bookmarks#index'
      get '/favorites' => 'favorites#index'
      resource :user_contacts, only: [:create]
      get '/reviews' => 'users#review'
    end

    get '/chats/exit' => 'chats#exit'
    resources :chats, only: [:index, :show, :create]
    get '/shops/search' => 'shops#search'

    resources :shops, only: [:index, :show] do
      resources :reviews, only: [:create, :destroy]
      resource :bookmarks, only: [:create, :destroy]
    end

    resources :reviews do
      resource :favorites, only: [:create, :destroy]
    end

  end

  devise_for :owners, controllers: {
    sessions: 'owners/sessions',
    registrations: 'owners/registrations'
  }

   namespace :owner do
    get 'homes/top' =>'homes/top'
    resources :shops, only: [:index, :new, :create, :edit, :update, :destroy]
    resource :owner_contacts, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
