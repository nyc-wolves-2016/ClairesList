Rails.application.routes.draw do
  resources :users

  get 'users/login'
  get 'users/register' => 'users#new'

  resources :categories do
    resources :articles
  end

  root 'categories#index'
end
