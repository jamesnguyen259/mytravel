Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get '/style', to: 'home#style', as: 'style'
  get '/fashion', to: 'home#fashion', as: 'fashion'

  resources :users
  resources :places
  resources :addresses
  resources :place_pictures
end
