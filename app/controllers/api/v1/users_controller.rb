class Api::V1::UsersController < ApplicationController

  def create

    @user = User.create(username: params["username"], password: params["password"])

    if @user.valid?
      token = issue_token({id: @user.id})
      render json: { user: UserSerializer.new(@user), token: token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end



  def login

    @user = User.find_by(username: params["username"])

    if @user && @user.authenticate(params["password"])
      token = issue_token({id: @user.id})
      render json: { user: UserSerializer.new(@user), token: token }, status: 200
    else
      render json: { error: "Could not authenticate"}, status: 401
    end
  end

  def auth

    if current_user
      render json: {current_user: current_user}
    else
      render json: {error: "Could not authenticate"}, status: 401
    end
  end

  # unused code

  # private
  # def user_params
  #   params.require(:user).permit(:username, :password, :bio, :avatar)
  # end

end
