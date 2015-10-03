class SessionsController < ApplicationController

	def new
	end

	def create
		@user = User.where(email: (params[:email])).first
		if @user and @user.password == params[:password]
			session[:user_id] = @user.id
			puts @user.id
			flash[:notice] = "Logged in successfully"
			redirect_to card_path @user.id
		else 
			flash[:alert] = "Login info incorrect"
			redirect_to login_path
		end
	end

	def destroy

		session[:user_id] = nil
		flash[:notice] = "Logged Out"
		redirect_to users_path	

	end

end
