Rails.application.routes.draw do
  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :categories do
    resources :articles
  end

  root 'categories#index'
end
