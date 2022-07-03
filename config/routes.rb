Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/distances/get_distance", to: "distances#get_distance", as: 'get_distance' 
  
  post "/distances/get_co2/car", to: "co2#get_co2_car", as: 'get_co2_car' 

  post "/distances/get_co2/metro", to: "co2#get_co2_metro", as: 'get_co2_metro' 

  post "/distances/get_co2/bus", to: "co2#get_co2_bus", as: 'get_co2_bus' 

  post "/distances/get_co2/intercites", to: "co2#get_co2_intercites", as: 'get_co2_intercites' 

  post "/distances/get_co2/plane", to: "co2#get_co2_plane", as: 'get_co2_plane' 

  post "/distances/get_co2/rer", to: "co2#get_co2_rer", as: 'get_co2_rer' 

  post "/distances/get_co2/train", to: "co2#get_co2_train", as: 'get_co2_train' 

  post "/distances/get_co2/moto", to: "co2#get_co2_moto", as: 'get_co2_moto' 
  
  root "distances#index" 
end
