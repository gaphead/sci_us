Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # post '/projects/search', to: 'projects#index', as: :projects_search
  resources :projects do
    resources :favorites, only: [] do
      collection do
        post 'toggle'
      end
    end
  end
  resources :users
  resources :favorites, only: [:index]

  get '/profile/:id', to: 'pages#profile', as: :profile
    # resources: favorites only: [:index, :new, :create, :destroy]
end
