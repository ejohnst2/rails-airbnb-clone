class LocationsController < ApplicationController

  def edit
  end

  def update
  end

  private

  def location_params
    params.require(:location).permit(:country, :city, :number, :street_name, :zip, :latitude, :longitude)
  end

end
