class UserController < ApplicationController

  def show
		@user = User.find(params[:id])
    render json: @user
	end

  def login
    # @user = User.find_or_create_by(username: params[username])
  end

end
