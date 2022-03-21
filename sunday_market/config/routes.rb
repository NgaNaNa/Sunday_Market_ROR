Rails.application.routes.draw do

  devise_for :users
  get '/sign_up', to: 'users#new', as: 'signup'
  root to: 'pages#home'
  # Session routes for Authenticatable (default)
  devise_scope :user do
    get '/sign_in', to: 'devise/sessions#new', as: 'signin'
    post '/sign_in', to: 'devise/sessions#create', as: 'create_session'
    get '/sign_out', to: 'devise/sessions#destroy', as: 'signout'
  end
  get '/restricted', to: 'pages#restricted'
  get '/users/:id', to: 'users#show'
  # put '/users/:id', to: 'users#update'
  # get '/users/:id', to: 'users#destroy'
  get '/listings', to: 'listings#index', as: 'listings'
  post '/listings', to: 'listings#create'
  get '/listings/new', to: 'listings#new', as: 'new_listing'
  # post '/listings', to: 'listings#index'
  get '/listings/:id', to: 'listings#show', as: 'listing'
  put '/listings/:id', to: 'listings#update'
  patch '/listings/:id', to: 'listings#update'
  delete '/listings/:id', to: 'listings#destroy', as: 'delete_listing'
  get '/listings/:id/edit', to: 'listings#edit', as: 'edit_listing'

 end


