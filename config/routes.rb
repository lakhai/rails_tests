Rails.application.routes.draw do
	resources :products
	get 'store/index'
	root 'store#index'
end
