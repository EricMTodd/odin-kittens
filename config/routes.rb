Rails.application.routes.draw do
  root "kittens#index"

  # Kittens routes
  # get "kittens", to: "kittens#index"
  # get "kittens/new", to: "kittens#new", as: "new_kitten"
  # post "kittens", to: "kittens#create", as: "create_kitten"
  # get "kittens/:id", to: "kittens#show", as: "show_kitten"
  # delete "kittens/:id", to: "kittens#destroy", as: "destroy_kitten"
  # get "kittens/:id/edit", to: "kittens#edit", as: "edit_kitten"
  # patch "kittens/:id", to: "kittens#update", as: "update_kitten"

  resources :kittens
end
