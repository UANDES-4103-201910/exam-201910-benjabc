Rails.application.routes.draw do
  get 'order_product/create'
  get 'order_product/update'
  get 'order_product/destroy'
  root to: "home#index"
   resource :cart, only: [:show]
  resources :addresses
  resources :products
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
