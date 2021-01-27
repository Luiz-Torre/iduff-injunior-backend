Rails.application.routes.draw do
  resources :schoolclasses
  resources :licenses
  resources :grades
  resources :prerequisites
  resources :subjects
  resources :schoolyears
  resources :departments
  post '/login', to: 'authentication#login'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
