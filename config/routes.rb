Rails.application.routes.draw do
  
  root 'static_pages#index'
  resources :users
  resources :events, only: [:new, :create, :show, :index]
  
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
 
 
end
