Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :galaxies
  resources :systems
  resources :planets
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]

  resources :users, only: [:show] do
    resources :galaxies, only: [:show, :index, :new]
    resources :systems, only: [:show, :index, :new]
    resources :planets, only: [:show, :index, :new]
  end

  get '/recent_galaxy', to: 'galaxies#most_recent'
  get '/recent_system', to: 'systems#most_recent'
  get '/recent_planet', to: 'planets#most_recent'

  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  post '/logout' => 'sessions#destroy'
  get '/auth/facebook/callback' => 'sessions#create'
end
