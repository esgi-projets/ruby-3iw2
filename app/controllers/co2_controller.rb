require "httparty"

class Co2Controller < ApplicationController
  include HTTParty
  base_uri 'api.monimpacttransport.fr/beta'

  def get_co2_car
    @distance = co2_params[:distance]
    @options = { query: { km: @distance }, format: :plain }
    @co2 = self.class.get('/getEmissionsPerDistance', @options).parsed_response
    @co2 = JSON.parse @co2, symbolize_names: true
    @co2 = @co2.select { |k, v| k[:name] == 'Voiture (thermique)'}.first[:emissions][:kgco2e]
  end

  def co2_params
    params.require(:co2).permit(:distance)
  end
end