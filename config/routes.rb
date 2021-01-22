Rails.application.routes.draw do
  namespace :user do
    get 'user_rooms/destroy'
  end
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
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
