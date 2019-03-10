class Api::V1::UserEventsController < ApplicationController

  skip_before_action :authorized, only: [:index]
  before_action :find_user_event, only: [:update, :destroy]

  def index
    @user_events = UserEvent.all
    render json: @user_events
  end

  def create
    @user_event = UserEvent.create(user_event_params)
    render json: @user_event, status: :accepted
  end

  def update
    @user_event.update(user_event_params)
    if @user_event.save
      render json: @user_event, status: :accepted
    else
      render json: { errors: @user_event.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @user_event.destroy
    render json: { message: “removed” }, status: :ok
  end

  private

  def user_event_params
    params.require(:user_event).permit(:id, :event_id, :user_id)
  end

  def find_user_event
    @user_event = UserEvent.find(params[:id])
  end
end