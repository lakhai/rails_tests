Rails.application.routes.draw do
  resources :line_items

  resources :carts

	resources :products
	get 'store/index'
	root 'store#index'
end
