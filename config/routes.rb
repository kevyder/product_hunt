Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users, only: [:new, :create]
  resources :products do
    resource :vote, only: [:create, :destroy] 
    resources :comments, only: [:create]
  end
  root 'products#index'
end
