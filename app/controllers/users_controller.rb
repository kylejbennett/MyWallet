class UsersController < ApplicationController

	def index
		
	end

	def new
	end

	def create
		@user = User.new(params[:user])
		@user.save
		if @user.save
			flash[:notice] = "User has been created"
			session[:user_id] = @user.id 
			puts @user.id
			redirect_to @user
		else
			if @user.errors.full_messages.any?
				@user.errors.full_messages.each do |error_message|
					flash[:notice] = error_message
				end
			end
		redirect_to new_user_path
		end
	end

	def show
		if current_user
			@user = User.find(params[:id])
		else
			flash[:alert] = "Please login or sign up"
			redirect_to login_path
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

end
