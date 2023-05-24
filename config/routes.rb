Rails.application.routes.draw do
  root "pages#home"

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

  resources :recipes, only: [:index, :show, :new, :create, :destroy]
end
