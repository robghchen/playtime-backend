class Api::V1::EventsController < ApplicationController

  skip_before_action :authorized, only: [:index]
  before_action :find_event, only: [:update, :destroy]

  def index
    @events = Event.all
    render json: @events
  end

  def create
    @event = Event.create(event_params)
    render json: @event, status: :accepted
  end

  def update
    @event.update(event_params)
    if @event.save
      render json: @event, status: :accepted
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @event.destroy
    @events = Event.all
    render json: @events
    # render json: { message: “removed” }, status: :ok
  end

  private

  def event_params
    params.require(:event).permit(:id, :title, :price, :date, :location, :description, :banner_img, :event_img, :user_id, :enable_posts, :enable_seats)
  end

  def find_event
    @event = Event.find(params[:id])
  end
end
