Rails.application.routes.draw do
  resources :users, only: [:new, :edit, :create]

  get 'users/login'
  get 'users/register' => 'users#new'

  resources :categories do
    resources :articles
  end

  root 'categories#index'
end
