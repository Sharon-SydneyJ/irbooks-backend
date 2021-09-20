Rails.application.routes.draw do
  resources :users
  resources :bookshelves
  resources :books

  # post '/users/:id/bookshelves/:id/', to: 'books#create'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
