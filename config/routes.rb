Rails.application.routes.draw do
  devise_for :users
  resources :likes
  resources :posts
  root to: "posts#index"

  # get "/sessions/new", to: "sessions#new", as: "login"
  # delete "/sessions", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
