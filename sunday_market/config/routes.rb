Rails.application.routes.draw do
  root "markets#index"

  get "/markets", to: "markets#index"
  get "/users", to: "users#index"
  get "/listings", to: "listings#index"
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
