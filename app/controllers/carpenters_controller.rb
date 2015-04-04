class CarpentersController < ApplicationController

	before_action :set_carpenter, only: [:show]

	def index
		@carpenters = Carpenter.page(params[:page]).per(10)
	end

	def new
		@user = User.new
	end

	def create

		@user = User.new(user_params)
	
		if @user.save
			redirect_to new_user_session_path
		else
			render 'new'
		end

	end

	def show
		@recommendations = @carpenter.recommendations.page(params[:page]).per(10)
	end

	private
	def set_carpenter
		@carpenter = Carpenter.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:name,
										  :email,
										  :password,
										  :password_confirmation,
										  carpenter_attributes: [
										  	:name,
										  	:description,
										  	:address])
	end

end