Rails.application.routes.draw do
  resources :trips
  resources :locations
  resources :users
  devise_for :users
  root to: "home#index"
end
