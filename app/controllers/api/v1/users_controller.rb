class Api::V1::UsersController < ApplicationController

  skip_before_action :authorized, only: [:index, :create]
  before_action :find_user, only: [:update, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
end

  def create
    @user = User.create(username: params[:username], first_name: params[:first_name], last_name: params[:last_name], password: params[:password])
    if @user.valid?
      @token = JWT.encode({username: @user.username}, 'ja2siDc3kJ')
      render json: { user: @user, jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @user.destroy
    render json: { message: “removed” }, status: :ok
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :first_name, :last_name, :lvl, :exp, :exp_limit, :max_energy, :energy)
  end

  def find_user
    @user = User.find(params[:id])
  end

end