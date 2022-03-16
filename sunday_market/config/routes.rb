Rails.application.routes.draw do

  root 'pages#home'
  get '/signup', to: 'users#new', as: 'signup'
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/signin', to: 'sessions#create', as: 'create_session'
  get '/listings', to: 'listings#index', as: 'listings'
  get '/listings/:id', to: 'listings#show', as: 'listing'
  get '/users', to: 'users#index'
  get '/users', to: 'users#create'
  get '/users/new', to: 'users#new'
  get '/users/:id/edit', to: 'users#edit'
  get '/users/:id', to: 'users#show'
  put '/users/:id', to: 'users#update'
  get '/users/:id', to: 'users#destroy'
 end


