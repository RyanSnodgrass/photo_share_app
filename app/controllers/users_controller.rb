class UsersController < ApplicationController
	has_and_belongs_to_many :events
	def index
		@user = User.find(params[:id])
	end
	def new
		@new_user = User.new
	end
	def show
		@user = User.find(params[:id])
	end
	def edit
		@user = User.find(params[:id])
	end
	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_path
		else
			redirect_to new_user_path
		end
	end
	def update
		@user = User.find(params[:id])
		@user.update_attributes(@user)
		redirect_to user_path(@user)
	end
	def user_params
		params.require(:user).permit(:name, :email, :location)
	end
end