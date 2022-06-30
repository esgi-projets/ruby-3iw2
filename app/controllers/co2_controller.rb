class CO2Controller < ApplicationController
  


  def get_co2
    const axios = require('axios');

    axios.get('https://api.monimpacttransport.fr/beta/getEmissionsPerDistance', {
    params: {
      km: @distance
    }
  })
  .then(function (response) {
    console.log(response);
  })
  .catch(function (error) {
    console.log(error);
  })
  .then(function () {
    
  });  
  end
end