Rails.application.routes.draw do
  get "/books", to: "books#index", as: "books"
  get "/books/:book_id", to: "books#show", as: "book"
  get "/authors", to: "authors#index", as: "authors"
  root to: "pages#home", as: "home"
end
