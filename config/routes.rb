Rails.application.routes.draw do
  
  root 'static#about'
  get '/about', to: 'static#about'
  get '/home', to: 'static#home'
  get '/contact', to: 'static#contact'
  resources :reserve
  resources :meals
  devise_for :users
end
