Rails.application.routes.draw do
  resources :plannings
  resources :transactions
  # Defines the root path route ("/")
  root :to => "home#index"

  get 'home/index'
  resources :products
  resources :categories
  resources :contacts

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
