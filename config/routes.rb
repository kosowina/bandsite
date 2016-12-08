Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  get '/about', to: 'static#about'
  get '/contact', to: 'static#contact'
  resources :reserve
  resources :meals

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
