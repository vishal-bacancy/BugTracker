# frozen_string_literal: true

Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
    registrations: 'users/registrations'
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }
  resources :projects 
  resources :comments

  resources :tickets 
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'projects#index'
end
