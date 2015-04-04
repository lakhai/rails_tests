class StoreController < ApplicationController
	def index
		@products = Product.all
		@page_name = 'Store'
	end
end