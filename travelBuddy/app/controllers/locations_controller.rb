class LocationsController < ApplicationController
  def index
  	@locations = Location.all
  end

  def new
  	@location = Location.new 
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

end
