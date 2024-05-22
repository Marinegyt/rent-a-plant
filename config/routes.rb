Rails.application.routes.draw do
  devise_for :users
  root 'plants#index'
  get '/plants/my_plants', to: 'plants#my_plants'
  resources :plants, only: %i[new create show update destroy] do
    resources :bookings, only: %i[create new]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
end
