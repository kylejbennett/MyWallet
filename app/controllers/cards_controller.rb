class CardsController < ApplicationController

	def index
	end

	def new
	end

	def create

		@user = User.find(session[:user_id])
		@card = Card.new(params[:card])
		@card.update(user_id: session[:user_id])
		@card.save
		if @card.save
			flash[:notice] = "Card has been saved!"
			redirect_to @card
		else
			if @card.errors.full_messages.any?
				@card.errors.full_messages.each do |error_message|
					flash[:notice] = error_message
				end
			end
			redirect_to new_card_path
		end

	end

	def show
		@user = User.find(session[:user_id])
		@cards = Card.where(user_id: @user)
	end

	def destroy
	end

end
