Rails.application.routes.draw do


  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  root to: 'toppages#index'
  
  get "signup", to: "users#new"
  resources :users, only: [:index, :show, :new, :create] do
    member do
      get :followings
      get :followers
      get :likes
    end
  end
  
  resources :microposts, only: [:create, :destroy] 
  resources :relationships, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]
  

  

end
