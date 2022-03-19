Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get '/sign_up', to: 'users#new', as: 'signup'
  # Session routes for Authenticatable (default)
  devise_scope :user do
    get '/sign_in', to: 'devise/sessions#new', as: 'signin'
    post '/sign_in', to: 'devise/sessions#create', as: 'create_session'
    get '/sign_out', to: 'devise/sessions#destroy', as: 'signout'
  end
  # destroy_user_session DELETE /users/sign_out                   {controller:"devise/sessions", action:"destroy"}
  # get '/sign_in', to: 'sessions#new', as: 'signin'
  # post '/sign_in', to: 'sessions#create', as: 'create_session'
  # get '/listings', to: 'listings#index', as: 'listings'
  # get '/listings/:id', to: 'listings#show', as: 'listing'
  get '/restricted', to: 'pages#restricted'
  # get '/users', to: 'users#index'
  # get '/users', to: 'users#create'
  # get '/users/new', to: 'users#new'
  # get '/users/:id/edit', to: 'users#edit'
  get '/users/:id', to: 'users#show'
  # put '/users/:id', to: 'users#update'
  # get '/users/:id', to: 'users#destroy'
  get '/listings', to: 'listings#index', as: 'listings'
  post '/listings', to: 'listings#create'
  get '/listings/new', to: 'listings#new', as: 'new_listing'
  # post '/listings', to: 'listings#index'
  get '/listings/:id/edit', to: 'listings#edit'
  get '/listings/:id', to: 'listings#show', as: 'listing'
  put '/listings/:id', to: 'users#update'
  delete '/listings/:id', to: 'users#destroy'

 end


