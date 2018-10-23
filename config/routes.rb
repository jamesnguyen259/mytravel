Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get '/about', to: 'home#about', as: 'about'

  resources :users
  resources :places
  resources :addresses
  resources :place_pictures
  resources :comments
end
