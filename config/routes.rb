Rails.application.routes.draw do
  devise_for :users
  root 'plants#index'
  resources :plants, only: %i[new create show update destroy] do
    resources :bookings, only: %i[create new]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
end
