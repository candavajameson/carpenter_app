class ProductsController < ApplicationController

	before_filter :set_product, only: [:edit, :update, :show]

	def index
			
	end

	def new
		@product = Product.new
	end

	def create
		@product = current_user.carpenter.products.build(product_params)

		if @product.save
			redirect_to @product, notice: 'Succesfully created product'
		else
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def show
	end

	private 
	def product_params
		params.require(:product).permit(:name,
										:description)
	end

	def set_product
		@product = Product.find(params[:id])
	end

end
