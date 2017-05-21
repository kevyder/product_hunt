Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  resources :users, only: [:new, :create]
  resources :products
  root 'products#index'
end
