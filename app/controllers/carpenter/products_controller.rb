class ProductsController < ApplicationController
	
	before_filter :set_carpenter, only: [:index]
	before_filter :set_product, only: [:show, :edit, :update]

	def index
		@products = @carpenter.products
	end

	def new
		@product = Product.new
	end

	def create
	end

	def edit
	end

	def update
	end

	def show
	end


	private
	def set_carpenter
		@carpenter = current_user.carpenter
	end

	def set_product
		@product = Product.find(params[:id])
	end

end