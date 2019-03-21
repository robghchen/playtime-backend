class Api::V1::SeatsController < ApplicationController

  skip_before_action :authorized, only: [:index]
  before_action :find_seat, only: [:update, :destroy]

  def index
    @seats = Seat.all
    render json: @seats
  end

  def create
    @seat = Seat.create(event_id: params[:event_id], position: params[:position])
    render json: @seat, status: :accepted
  end

  def update
    @seat.update(seat_params)
    if @seat.save
      render json: @seat, status: :accepted
    else
      render json: { errors: @seat.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @seat.destroy
    render json: { message: “removed” }, status: :ok
  end

  private

  def seat_params
    params.require(:seat).permit(:user_id, :username, :event_id, :position)
  end

  def find_seat
    @seat = Seat.find(params[:id]) 
  end

end