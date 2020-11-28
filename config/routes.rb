Rails.application.routes.draw do
 resources :product_types

  root to: 'product_types#index'
  get 'categories/index'

  get 'categories/show'

  get 'posts/index'

  get 'posts/show'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
