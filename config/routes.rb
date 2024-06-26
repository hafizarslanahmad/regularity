Rails.application.routes.draw do
 
 
  devise_for :users, {
    sessions: 'users/sessions'
  }

  #root 'pages#home'
  get 'pages/home'
  get 'pages/users'
  get 'pages/admin'
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :tasks
  root 'tasks#index'

  resources :items
end
