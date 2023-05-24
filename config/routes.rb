Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions', 
        registrations: 'users/registrations'
      }

  root "foods#index"

  resources :users, only: [:index, :show] do
    resources :foods, only: [:index, :new, :create, :destroy] do
      delete ":id", to: "foods#destroy", on: :member     
    end
  end
  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    # delete "id", to: "recipes#destroy", on: :member
  end
end