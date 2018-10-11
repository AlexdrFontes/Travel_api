class V1::PlacesController < ApplicationController
  def index
    @places = Place.all
    render json: @places, status: :ok
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @place = Place.new(place_params)
    @place.trips = [@trip]
    if@place.save
      render status: 201, json: @place
    else
      head(:unprocessable_entity)
    end
  end

  def update
    @trip = Trip.find(params[:trip_id])
    @place = Place.where(id: params[:id]).first
    @place.trips = [@trip]
    if @place.update(place_params)
      render status:200, json: @place
    else
      render status:422, json: @place.errors.messages
    end
  end

  def destroy
    @place = Place.where(id: params[:id]).first
    if @place.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  private

  def place_params
    params.permit(:name,:description)
  end
end
