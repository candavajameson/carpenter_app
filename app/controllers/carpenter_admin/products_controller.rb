class CarpenterAdmin::ProductsController < CarpenterAdmin::ApplicationController
	
	before_action :set_carpenter, only: [:index, :create, :update]
	before_action :set_product, only: [:show, :edit, :update]

	def index
		@products = @user.carpenter.products.page(params[:page]).per(10)
	end

	def new
		@product = Product.new
	end

	def create
		@product = @user.carpenter.products.build product_params		
		if @product.save
			redirect_to [:carpenter_admin, @product], :notice => "Successfully created product"
		else
			render 'new'
		end

	end

	def edit
	end

	def update

		if @product.update_attributes product_params
			redirect_to [:carpenter_admin, @product], :notice => "Successfully updated product"
		else
			render 'edit'
		end
	end

	def show
	end


	private
	def set_carpenter
		@user = current_user
	end

	def set_product
		@product = Product.find(params[:id])
	end

	def product_params
		params.require(:product).permit(:name,
										:description,
										:banner)
	end

end