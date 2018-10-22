Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get '/style', to: 'home#style', as: 'style'

  resources :users
  resources :places
  resources :addresses
  resources :place_pictures
end
