Rails.application.routes.draw do
  resources :contacts
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "contacts", to: "contact#index"

  root to: "contacts#index"
end
