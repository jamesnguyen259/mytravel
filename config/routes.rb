Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers:{omniauth_callbacks: "users/omniauth_callbacks"}
  root 'home#index'
  get '/about', to: 'home#about', as: 'about'
  
  resources :users
  resources :places
  resources :addresses
  resources :place_pictures
  resources :comments
  
end
