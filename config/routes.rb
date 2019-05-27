Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :projects, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :users
    # resources: favorites only: [:index, :new, :create, :destroy]
end
