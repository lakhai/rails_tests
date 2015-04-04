Rails.application.routes.draw do
  resources :orders

  resources :line_items
  resources :carts
  resources :products
  get 'store/index'
  get 'line_items/:id/remove', :to => 'line_items#remove'
  root 'store#index'
end
