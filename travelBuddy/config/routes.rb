Rails.application.routes.draw do
  get "users", to: "users#index"
  get "users/new", to: "users#new"
  post "users", to: "users#create"
  get "locations", to: "locations#index"

  resources :trips
  resources :locations

  devise_for :users
  root to: "home#index"
end
