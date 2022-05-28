class DistancesController < ApplicationController

  # GET /distances or /distances.json
  def index

  end


  def get_distance
    matrix = GoogleDistanceMatrix::Matrix.new
    matrix.configure do |config|
      config.google_api_key = Figaro.env.google_api_key
    end

    address = GoogleDistanceMatrix::Place.new address: distance_params['from_address']
    dest_address = GoogleDistanceMatrix::Place.new address: distance_params['to_address']
    
    matrix.origins << address
    matrix.destinations << dest_address


    # Get the distance between the two addresses.
    # matrix.origins = address
    # matrix.destinations = dest_address

    @distance = matrix.data.as_json.flatten
    @distance = @distance.first['distance_in_meters']
  end

  def distance_params  
    params.require(:distances).permit(:from_address, :to_address).to_h
  end  
end
