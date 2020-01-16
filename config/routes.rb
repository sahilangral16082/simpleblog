Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'
  resources :posts
  resources :users, except: [:new]
  get 'signup' => 'users#new', as: 'use'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
   
end
