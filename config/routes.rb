Rails.application.routes.draw do
  get 'carts/show'
  get 'carts_controller/show'
  get 'carts_controller/new'
  #get 'cartitems/new'
  get 'top/main'
  resources :products
  
  root 'top#main'
  
  resources :cartitems, only: [:new, :create, :destroy]
  resources :carts, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
