Rails.application.routes.draw do
  resources :variants
  resources :products
  resources :orders
  resources :order_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
