Rails.application.routes.draw do
  resources :parents
  resources :babysitters
  get 'static/welcome'
  root 'static#welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
