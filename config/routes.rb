Rails.application.routes.draw do
  get 'articles/show'

  resources :categories do
    resources :articles
  end

  root 'categories#index'
end
