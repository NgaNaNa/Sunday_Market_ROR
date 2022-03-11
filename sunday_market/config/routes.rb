Rails.application.routes.draw do
  root "listings#index"

  get "/listings", to: "listings#index", as: "listings"
  get "/users", to: "users#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
