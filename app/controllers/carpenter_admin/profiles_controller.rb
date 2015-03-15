class CarpenterAdmin::ProfilesController < CarpenterAdmin::ApplicationController
	
	before_filter :set_carpenter

	def show
	end

	def update
		if @carpenter.update_attributes carpenter_params
			redirect_to carpenter_admin_profile_path, :notice => "Successfully update profile"
		else
			render 'edit'
		end
	end

	private
	def set_carpenter
		@carpenter = current_user.carpenter
	end

	def carpenter_params
		params.require(:carpenter).permit(:name,
											:address,
											:description,
											:avatar)
	end
end