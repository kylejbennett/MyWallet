class UsercardsController < ApplicationController

	def new

	end

	def show

	end

	def create
		@card = Card.where(card_number: params[:card_number]).first
		@user = User.where(fname: params[:fname], lname: params[:lname], email: params[:email]).first
		@usercard = Usercard.new(card_id: @card.id, user_id: @user.id)
		
		if @usercard.save
			flash[:notice] = "Card shared Successfully!"
		else
			flash[:alert] = "There was a problem with your request"
		end

		redirect_to card_path current_user
		
	end	

	def destroy
		@usercard = Usercard.find(params[:id])
		@usercard.destroy
		redirect_to card_path current_user
	end

end