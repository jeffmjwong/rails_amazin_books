Rails.application.routes.draw do
  get 'stores/index'

  get "/books", to: "books#index", as: "books"
  get "/books/:book_id", to: "books#show", as: "book"
  get "/authors", to: "authors#index", as: "authors"
  get "/stores", to: "stores#index", as: "stores"
  root to: "pages#home", as: "home"
end
