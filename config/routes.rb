Rails.application.routes.draw do
  root "foods#index"

  get '/foods', to: 'foods#index'
  get '/recipes', to: 'recipes#index'
  get '/shopping_lists', to: 'shopping_lists#index'


  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  #get '/shopping_lists', to: 'shopping_lists#index'

  resources :users, only: [:index, :show] do
    resources :foods, only: [:index, :new, :create, :destroy]
  end
  resources :recipes do
    resources :recipe_foods
  end
  
  resources :public_recipes, only: [:index]

  resources :recipes, only: [:index, :show, :new, :create, :destroy]
end
