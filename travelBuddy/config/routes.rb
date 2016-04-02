Rails.application.routes.draw do
  get 'locations/index'

  get 'locations/new'

  get 'locations/create'

  get 'locations/show'

  get 'trips/index'

  get 'trips/new'

  get 'trips/create'

  get 'trips/show'

  get 'users/index'

  get 'users/new'

  get 'users/create'

  get 'users/show'

  get 'home/index'

  devise_for :users
  root to: "home#index"
end
