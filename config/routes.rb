Rails.application.routes.draw do
  root "kittens#index"

  # Kittens routes
  get "kittens", to: "kittens#index"
end
