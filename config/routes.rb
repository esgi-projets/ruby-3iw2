Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/distances/get_distance", to: "distances#get_distance", as: 'get_distance' 
  
  get "/distances/get_co2", to: "co2#get_co2_car", as: 'get_co2_car' 
    
  root "distances#index" 
end
