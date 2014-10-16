Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'sessions/new'

  match '/reviews', to: 'reviews#index', via: [:post]
  resources :reviews, only: [:index]
  resources :books do
    resources :reviews
  end

  resources :users
  resources :sessions
  resources :comments, only: [:create]

  root 'reviews#index'
end
