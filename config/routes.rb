Rails.application.routes.draw do
  devise_for :users

  resources :collections, only: [:index]
end
