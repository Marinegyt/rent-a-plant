Rails.application.routes.draw do
  devise_for :users
  root 'plants#index'
end
