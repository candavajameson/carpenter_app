class RecommendationsController < ApplicationController

	def new
	end

	def create
	end

	private 
	def recommendation_params
		params.require(:recommendation).permit(:title,
												:body)
	end
end
