Rails.application.routes.draw do
  devise_for :users
  resources :products
  get 'home/index'

  #TODO users
  get 'users/index'
  patch 'users/upgrade_to_admin'

  root 'home#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
