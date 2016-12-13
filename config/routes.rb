Rails.application.routes.draw do
  
  root 'static#about'
  get '/contact', to: 'static#contact'
  #resources :reserve
  resources :meals
  devise_for :users
end
