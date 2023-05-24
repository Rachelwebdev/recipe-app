Rails.application.routes.draw do
  
  resources :foods, only: [:index, :new, :create, :destroy] do
    delete ":id", to: "foods#destroy", on: :member
  end
  get '/shopping_lists', to: 'shopping_lists#index'
  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users
  # resources :users
  
  #   resources :recipes, except: [:update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :recipes
  get '/shopping_lists/index', to: 'shopping_lists#index'

  resources :foods, only: [:index, :show, :new, :create, :destroy]
  root "foods#index"
end