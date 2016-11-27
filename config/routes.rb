Rails.application.routes.draw do
  get 'meals/show'

  get 'meals/new'

  get 'meals/create'

  get 'meals/edit'

  get 'meals/destroy'

  get 'register/registration'

  get 'static/about'

  get 'static/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
