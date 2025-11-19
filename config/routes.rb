Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # resources :restaurants, only: [:index, :new, :create, :show]
  #   resources :reviews, only: [:new, :create]#
  get "restaurants", to: "restaurants#index", as: :restaurants
  get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  post "restaurants", to: "restaurants#create"
  get "restaurants/top", to: "restaurants#top"
  get "restaurants/:id", to: "restaurants#show", as: :restaurant
  delete "restaurants/:id", to: "restaurants#delete"

  get "restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: :new_restaurant_review   # show the form to write a new review
  post "restaurants/:restaurant_id/reviews", to: "reviews#create", as: :restaurant_reviews #save the review to the database

  # Defines the root path route ("/")
  # root "posts#index"
end
