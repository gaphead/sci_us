Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :projects do
    resources :payments, only: [:new, :create]
    resources :favorites, only: [] do
      collection do
        post 'toggle'
      end
    end
  end
  resources :users
  resources :favorites, only: [:index]

  resources :donations, only: [:show]

  get '/profile/:id', to: 'pages#profile', as: :profile

  post '/project/:id', to: 'projects#project_counter', as: :project_counter
    # resources: favorites only: [:index, :new, :create, :destroy]
end
