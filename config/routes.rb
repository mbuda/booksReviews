Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'sessions/new'

  resources :reviews, only: [:index, :new]
  resources :books do
    resources :reviews
  end

  resources :users
  resources :sessions

  root 'reviews#index'
end
