class Api::V1::ActivitiesController < ApplicationController

  skip_before_action :authorized, only: [:index]
  before_action :find_activity, only: [:update, :destroy]

  def index
    @activities = Activity.all
    render json: @activities
  end

  def create
    @activity = Activity.create(user_id: params[:user_id], task: params[:task])
    render json: @activity, status: :accepted
  end

  def update
    @activity.update(activity_params)
    if @activity.save
      render json: @activity, status: :accepted
    else
      render json: { errors: @activity.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @activity.destroy
    render json: { message: “removed” }, status: :ok
  end

  private

  def activity_params
    params.require(:activity).permit(:user_id, :task)
  end

  def find_activity
    @activity = Activity.find(params[:id]) 
  end

end
