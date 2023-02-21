Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  delete "/books/:id", to: "books#destroy", as: :destroy_book
  resources :books
  resources :rentals, only: [:index]
end
