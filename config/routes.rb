Rails.application.routes.draw do
  root to: 'sessions#new'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks
end
