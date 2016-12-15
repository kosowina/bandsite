Rails.application.routes.draw do
  
  get 'contact_us/new'

  get 'contact_us/create'

  root 'static#about'
  get '/contact', to: 'static#contact'
  #resources :reserve
  resources :meals
  devise_for :users
end
