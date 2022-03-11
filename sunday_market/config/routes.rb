Rails.application.routes.draw do
  root "listings#index"

  get "/listings", to: "listings#index", as: "listings"
  post "/listings", to: "listings#create"
  get "/listings/:id", to: "listings#show", as: "listing"
  get "/users", to: "users#index", as: "users"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
