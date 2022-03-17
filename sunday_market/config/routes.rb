Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get '/sign_up', to: 'users#new', as: 'signup'
  get '/sign_in', to: 'sessions#new', as: 'signin'
  post '/sign_in', to: 'sessions#create', as: 'create_session'
  get '/listings', to: 'listings#index', as: 'listings'
  get '/listings/:id', to: 'listings#show', as: 'listing'
  get '/restricted', to: 'pages#restricted'
  # get '/users', to: 'users#index'
  # get '/users', to: 'users#create'
  # get '/users/new', to: 'users#new'
  # get '/users/:id/edit', to: 'users#edit'
  # get '/users/:id', to: 'users#show'
  # put '/users/:id', to: 'users#update'
  # get '/users/:id', to: 'users#destroy'

 end


