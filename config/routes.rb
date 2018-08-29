Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :galaxies
  resources :systems
  resources :planets
  resources :users

  resources :users, only: [:show] do
    resources :galaxies, only: [:show, :index, :new]
    resources :systems, only: [:show, :index, :new]
    resources :planets, only: [:show, :index, :new]
  end

end
