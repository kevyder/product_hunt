Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, only: %i[new create]
  resources :products do
    resource :vote, only: %i[create destroy]
    resources :comments, only: [:create]
  end
  root 'products#index'
end
