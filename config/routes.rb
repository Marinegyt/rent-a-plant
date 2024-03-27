Rails.application.routes.draw do
  devise_for :users
  root 'plants#index'
  resources :plants, only: %i[new create show]
end
