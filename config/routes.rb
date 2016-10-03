Rails.application.routes.draw do
  get 'users/show'

  get 'users/create'

  get 'articles/show'

  resources :categories do
    resources :articles
  end

  root 'categories#index'
end
