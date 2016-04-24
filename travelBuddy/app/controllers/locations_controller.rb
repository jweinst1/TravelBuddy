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
  	@location = @trip.locations.create(location_params)
    if @location.save 
      redirect_to url_for(:controller => :trips, :action => :new)
    else
      render "new" 
    end
  end

  def show
  	@location = Location.find(params[:id])
  end

  def destroy
    @location.destroy
  end
  
  private

  def location_params
    params.require(:location).permit(:name)
  end

  def all_locations
    @locations = Task.all
  end

end
