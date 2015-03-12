class ProductsController < ApplicationController

	before_filter :set_carpenter, only: [:index]

	def index
		@products = @carpenter.products.page(page[:page]).per(10)
	end

	def show
		@product = Product.find(params[:id])
	end

	private 
	def set_carpenter
		@carpenter = Carpenter.find(params[:carpenter_id])
	end
end
