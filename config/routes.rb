Rails.application.routes.draw do
  devise_for :users
  root 'application#hello'  
  get '/about', to: 'static#about'
  get '/home', to: 'static#home'
  get '/contact', to: 'static#contact'
  resources :reserve
  resources :meals

end
