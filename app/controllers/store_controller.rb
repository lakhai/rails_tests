class StoreController < ApplicationController
	def index
		@products = Product.all
		if session[:visits].nil?
			session[:visits] = 1
		else
			session[:visits] += 1
		end
		@visits = session[:visits]
	end
end
