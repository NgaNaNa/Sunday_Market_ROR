Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/signup', to: 'users#new', as: 'signup'
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/signin', to: 'sessions#create', as: 'create_session'
  get '/listings', to: 'listings#index', as: 'listings'
  get '/listings/:id', to: 'listings#show', as: 'listing'
 end


