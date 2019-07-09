Rails.application.routes.draw do
  get "/", to: "exhibitions#index", as: "index"

  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :exhibitions, only: [:index]
  resources :users, only: [:new, :create, :show]
  # resources :comment_likes
  # resources :comments
  # resources :likes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
