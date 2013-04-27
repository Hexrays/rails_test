class StaticPagesController < ApplicationController

	def index
		
	end

	def welcome
		@math = 123456789 * 123456789
		@user = User.all
		@last_user_name = User.last.name
		@new_user = User.new
	end

	def create
		puts "***********************"
		puts params[:user]
		puts "***********************"
		@new_user = User.new(params[:user])

		if @new_user.save
			flash[:success] = "Who you gonna call?"
			redirect_to root_url
		else
			flash[:error] = "You better call the Ghostbusters!"
			redirect_to root_url
		end
	end



end