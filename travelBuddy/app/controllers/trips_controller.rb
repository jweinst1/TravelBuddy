class TripsController < ApplicationController
  #before_action :authenticate_user!, only: [:index]
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
    params.require(:trip).permit(:name, :start, :end) 
  end

  # protected 
  # def authenticate_user!
  #   if user_signed_in?
  #     redirect_to trips_path
  #   else 
  #     redirect_to user_session_path
  #   end
  # end

end
