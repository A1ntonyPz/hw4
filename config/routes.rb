Rails.application.routes.draw do
  root "places#index"

  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :entries, only: [:new, :create]
  resources :places
  resources :users, only: [:new, :create]
end
