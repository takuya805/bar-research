Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root to: 'homes#top'
  get 'homes/about' => 'homes#about'

  scope module: :user do
    resources :users, only: [:show, :edit, :update, :destroy] do
      get '/bookmarks' => 'bookmarks#index'
      get '/favorites' => 'favorites#index'
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
    get 'homes/about' => 'homes#about'
    resources :shops, only: [:index, :new, :create, :edit, :update, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
