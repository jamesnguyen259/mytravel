Rails.application.routes.draw do
  root 'home#index'
  get '/style', to: 'home#style', as: 'style'
  get '/fashion', to: 'home#fashion', as: 'fashion'

end
