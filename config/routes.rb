Rails.application.routes.draw do
  resources :users

  resources :categories do
    resources :articles
  end

  root 'categories#index'
end
