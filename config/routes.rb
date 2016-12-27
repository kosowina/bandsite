Rails.application.routes.draw do
  
  get 'categories/index'

  get 'categories/create'

  get 'categories/destroy'

  get 'contact_us/new'

  get 'contact_us/create'

  root 'static#about'
  get '/info', to: 'static#info'
  #resources :reserve
  resources :meals
  resources :contact_us, only: [:new, :create]
  devise_for :users
end
