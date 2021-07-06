Rails.application.routes.draw do
  resources :likes
  resources :posts
  get "/login", to: "sessions#new", as: "login"
  resources :sessions, only: [:create]
  # post "/sessions", to: "sessions#create", as: "sessions"
  delete "/login", to: "sessions#destroy"

  # get "/sessions/new", to: "sessions#new", as: "login"
  # delete "/sessions", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
