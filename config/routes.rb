Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'products#index'
  get 'products/new'
  resources :products
  resources :cart_items, only: [:new, :create]
  resources :carts,only: [:show]
end
