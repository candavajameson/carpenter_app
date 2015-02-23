class CarpentersController < ApplicationController

	before_filter :set_carpenter, only: [:edit, :update, :show]

	def index
		@carpenters = Carpenter.page(params[:page]).per(10)
	end

	def new
	end

	def create
	end

	def show
	end

	def edit
	end

	def update
	end

	private
	def set_carpenter
		@carpenter = Carpenter.find(params[:id])
	end

	def carpenter_params
		params.require(:carpenter).permit(:name,
										  :email,
										  :password,
										  :password_confirmation)
	end

end