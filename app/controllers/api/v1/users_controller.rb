class Api::V1::UsersController < ApplicationController

  def create
    @user = User.create(username: params["username"], password: params["password"])
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def login
    @user = User.find_by(username: params["username"])
    if @user && @user.authenticate(params["password"])
      render json: { user: UserSerializer.new(@user) }, status: 200
    else
      render json: { error: "Could not authenticate"}, status: 401
    end
  end

  # unused code

  # private
  # def user_params
  #   params.require(:user).permit(:username, :password, :bio, :avatar)
  # end

end
