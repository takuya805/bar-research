Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: 'homes#top'
  get 'homes/about' => 'homes#about'

  scope module: :user do
    resources :users, only: [:show, :edit, :update, :destroy]
    get '/chats/exit' => 'chats#exit'
    resources :chats, only: [:index, :show, :create]
    get '/shops/search' => 'shops#search'
    resources :shops, only: [:index, :show] do
      resources :reviews, only: [:create, :destroy]
    end
    resources :reviews do
      resource :favorites, only: [:create, :destroy]
    end
    resources :shops do
      resource :bookmarks, only: [:create, :destroy]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
