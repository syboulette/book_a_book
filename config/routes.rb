Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  delete "/books/:id", to: "books#destroy"
  # get "books/:id", to: "books#show", as: "show_book"
  resources :books
  resources :rentals
end
