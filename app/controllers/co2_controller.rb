require "httparty"

class Co2Controller < ApplicationController
  include HTTParty
  base_uri 'api.monimpacttransport.fr/beta'

  def get_co2
    @distance = params[:distance]
    @options = { query: { km: @distance, filter: 'all', fields: 'emoji' }, format: :plain }
    @co2 = self.class.get('/getEmissionsPerDistance', @options).parsed_response
    @co2 = JSON.parse @co2, symbolize_names: true
  end

  def get_co2_car
    @co2 = get_co2
    @name = 'Voiture (thermique)'
    @emoji = @co2.select { |k, v| k[:name] == @name }.first[:emoji][:main]
    @co2 = @co2.select { |k, v| k[:name] == @name }.first[:emissions][:kgco2e]
  end  

  def get_co2_metro
    @co2 = get_co2
    @name = 'Métro'
    @emoji = @co2.select { |k, v| k[:name] == @name }.first[:emoji][:main]
    @co2 = @co2.select { |k, v| k[:name] == @name }.first[:emissions][:kgco2e]
  end

  def get_co2_plane
    @co2 = get_co2
    @name = 'Avion'
    @emoji = @co2.select { |k, v| k[:name] == @name }.first[:emoji][:main]
    @co2 = @co2.select { |k, v| k[:name] == @name }.first[:emissions][:kgco2e]
  end

  def get_co2_moto
    @co2 = get_co2
    @name = 'Moto'
    @emoji = @co2.select { |k, v| k[:name] == @name }.first[:emoji][:main]
    @co2 = @co2.select { |k, v| k[:name] == @name }.first[:emissions][:kgco2e]
  end

  def get_co2_bus
    @co2 = get_co2
    @name = 'Bus (électrique)'
    @emoji = @co2.select { |k, v| k[:name] == @name }.first[:emoji][:main]
    @co2 = @co2.select { |k, v| k[:name] == @name }.first[:emissions][:kgco2e]
  end

  def get_co2_train
    @co2 = get_co2
    @name = 'TGV'
    @emoji = @co2.select { |k, v| k[:name] == @name }.first[:emoji][:main]
    @co2 = @co2.select { |k, v| k[:name] == @name }.first[:emissions][:kgco2e]
  end

  def get_co2_rer
    @co2 = get_co2
    @name = 'RER ou Transilien'
    @emoji = @co2.select { |k, v| k[:name] == @name }.first[:emoji][:main]
    @co2 = @co2.select { |k, v| k[:name] == @name }.first[:emissions][:kgco2e]
  end

  def get_co2_intercites
    @co2 = get_co2
    @name = 'Intercités'
    @emoji = @co2.select { |k, v| k[:name] == @name }.first[:emoji][:main]
    @co2 = @co2.select { |k, v| k[:name] == @name }.first[:emissions][:kgco2e]
  end
end