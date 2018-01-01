Rails.application.routes.draw do
  
  root 'static_pages#index'
  resources :users
  resources :events
  
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
 
 
end
