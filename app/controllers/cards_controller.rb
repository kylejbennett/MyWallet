class CardsController < ApplicationController

	def index
	end

	def new
	end

	def show

		@user = User.find(params[:id])

	end

	def create
	end

	def destroy
	end

end
