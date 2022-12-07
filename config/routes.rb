Rails.application.routes.draw do
  # Defines the root path route ("/")
  root :to => "home#index"

  #get 'home/index'
  resources :products
  resources :categories

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
