class Api::V1::StreaksController < ApplicationController
  
  skip_before_action :authorized, only: [:index]
  before_action :find_streak, only: [:update, :destroy]

  def index
    @streaks = Streak.all
    render json: @streaks
  end

  def create
    @streak = Streak.create(streak_params)
    render json: @streak, status: :accepted
  end

  def update
    @streak.update(streak_params)
    if @streak.save
      render json: @streak, status: :accepted
    else
      render json: { errors: @streak.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @streak.destroy
    render json: { message: “removed” }, status: :ok
  end

  private

  def streak_params
    params.require(:streak).permit(:player_id, :friend_id, :count)
  end

  def find_streak
    @streak = Streak.find(params[:id])
  end
end
