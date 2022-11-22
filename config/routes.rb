Rails.application.routes.draw do
  devise_for :users

  root to: 'collections#index'

  resources :collections, only: [:index, :new, :create, :show]
  resources :users, only: [:show]
end
