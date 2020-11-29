Rails.application.routes.draw do
  
  root to: 'posts#index'
  resources :product_types, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resources :posts, only: [:index, :show]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
