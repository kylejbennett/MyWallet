class UsersController < ApplicationController

	def current_user 
		if session[:userid]
			@current_user = User.find(session[:userid])
		else
			nil
		end
	end


	def index
		
	end

	def new
	end

	def create
		@user = User.new(params[:user])
		@user.save
		if @user.save
			flash[:notice] = "User has been created"
			session[:userid] = @user.id 
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
		
	end

	def edit
	end

	def update
	end

	def destroy
	end

end
