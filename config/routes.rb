Rails.application.routes.draw do
  resources :comments
  resources :users, except: [:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#index"

  get "signup", to: "users#new"

  # Authentication routes
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"

  resources :pages
  resources :articles
end
