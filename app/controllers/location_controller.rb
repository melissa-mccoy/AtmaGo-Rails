class LocationController < ApplicationController
  def index

  end

  def create
    result_struct = Geocoder.search(params[:search_location]).first.data
    northeast_coords = result_struct["geometry"]["bounds"]["northeast"]
    southwest_coords = result_struct["geometry"]["bounds"]["southwest"]
    return {southwest: southwest_coords,northeast: northeast_coords}.to_json
  end
end
