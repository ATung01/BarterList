class UserController < ApplicationController

  def show
		@user = User.find(params[:id])
    byebug
    render json: @user
	end

  def login
    @user = User.find_or_create_by(email: params[:email])
    render json: @user
  end

end
