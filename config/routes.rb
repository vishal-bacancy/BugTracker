Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :comments
  resources :tickets
  resources :projects
  devise_for :users, controllers: { 
    registrations: 'users/registrations', 
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }
  
  resources :users
  root  "projects#index" 
end
