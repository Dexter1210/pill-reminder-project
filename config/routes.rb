Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  get "sessions/user", "sessions#user"
  resources :medical_histories
  resources :dependents
  root 'home#index'
  
  resources :users
  
  get "medical_histories/:user_id/user", to: "medical_histories#get_self_and_dependents"
  get "medical_histories/:user_id/users", to: "medical_histories#get_for_self"
  get "medical_histories/:user_id/deps", to: "medical_histories#get_for_dependents"


  get "medical_histories/:user_id/users_all", to: "medical_histories#get_all_for_self"
  get "medical_histories/:user_id/deps_all", to: "medical_histories#get_all_for_dep"
  
  get "dependents/:user_id/dependents", to: "dependents#get_all_dependents"


  

  # defaults format: :json do 
  
  # end

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new',  as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  delete 'logout', to: 'sessions#destroy', as: 'logout_delete'

  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end