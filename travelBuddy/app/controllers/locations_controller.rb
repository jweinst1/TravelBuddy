class LocationsController < ApplicationController
  def index
  	@locations = Location.all
  end

  def new
  	@location = Location.new
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
end
  end

  def create
  	@location = Location.create(location_params)
    if @location.save 
      redirect_to @trip
    else
      render "new" 
    end
  end

  def show
  	@location = Location.find(params[:id])
  end

  private

  def location_params
    params.require(:location).permit(:name)
  end

end
