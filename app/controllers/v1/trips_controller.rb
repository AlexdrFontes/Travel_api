class V1::TripsController < ApplicationController
  def index
    @trips = Trip.all
    render json: @trips, status: :ok
  end

  def create
    @trip = Trip.new(trip_params)
    if@trip.save
      render status: 201, json: @trip
    else
      head(:unprocessable_entity)
    end
  end

  def update
    @trip = Trip.where(id: params[:id]).first
    if @trip.update(trip_params)
      render status:200, json: @trip
    else
      render status:422, json: @trip.errors.messages
    end
  end

  def destroy
    @trip = Trip.where(id: params[:id]).first
    if @trip.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  private

  def trip_params
    params.permit(:name,:description,:date_of_arrival,:date_of_departure)
  end
end
