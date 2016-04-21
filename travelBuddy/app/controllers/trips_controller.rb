class TripsController < ApplicationController

  def index
    @trips = Trip.all 
  end

  def new
    @trip = Trip.new 
  end

  def create
    @trip = Trip.create(trip_params)
    if @trip.save 
      redirect_to @trip 
    else
      render "new" 
    end
  end

  def show
    @trip = Trip.find(params[:id]) 
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to action: 'index'
  end
  

  private

  def trip_params
    params.require(:trip).permit(:name) 
  end

end
