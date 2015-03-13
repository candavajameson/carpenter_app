class CarpentersController < ApplicationController

	before_filter :set_carpenter, only: [:edit, :update, :show]

	def index
		@carpenters = Carpenter.page(params[:page]).per(10)
	end

	def new
		@user = User.new
	end

	def create
		opts = {
			password_expires_at: nil
		}

		@user = User.new(user_params.merge(opts))
		@user.skip_confirmation!

		if @user.save

		else
			render 'new'
		end

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

	def set_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:carpenter).permit(:name,
										  :email,
										  :password,
										  :password_confirmation,
										  carpenter_attributes: [
										  	:name,
										  	:description,
										  	:address])
	end

end