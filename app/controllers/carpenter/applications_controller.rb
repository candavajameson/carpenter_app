class Carpenter::ApplicationController < ApplicationController

	before_filter :authenticate_carpenter!

	def authenticate_carpenter!

	end
end