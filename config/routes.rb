Rails.application.routes.draw do
  root "kittens#index"

  # Kittens routes
  get "kittens", to: "kittens#index"
  get "kittens/new", to: "kittens#new"
  post "kittens", to: "kittens#create"
  get "kittens/:id", to: "kittens#show", as: "show_kitten"

end
