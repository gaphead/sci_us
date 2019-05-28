Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :projects, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :users
  resources :favorites

  get '/profile/:id', to: 'pages#profile', as: :profile
    # resources: favorites only: [:index, :new, :create, :destroy]
end
