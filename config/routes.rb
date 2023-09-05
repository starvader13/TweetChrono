# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# Defines the root path route ("/")
# root "articles#index"

Rails.application.routes.draw do
  # GET /about 
  # get "about", to: "about#index" 
  get "about-us", to: "about#index", as: :about

  # This can be replaced with get "/", to: "main#index"
  root to: "main#index"
end
