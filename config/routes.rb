Rails.application.routes.draw do
  
  namespace :admin do
    root to: 'posts#index'
    resources :posts
    resources :product_types
    resources :categories
  end


  root to: 'posts#index'

  resources :product_types, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resources :posts, only: [:index, :show]

  resources :categories do
    resources :product_types
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
