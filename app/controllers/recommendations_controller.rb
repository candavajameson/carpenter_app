class RecommendationsController < ApplicationController

	before_action :set_carpenter

	def create
		@recommendation = @carpenter.recommendations.build recommendation_params
		@recommendation.user = current_user

		@recommendation.save
		redirect_to @carpenter
		
	end

	private 
	def recommendation_params
		params.require(:recommendation).permit(:title,
												:body)
	end

	def set_carpenter
		@carpenter = Carpenter.find(params[:carpenter_id])
	end
end
