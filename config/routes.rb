Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/distances/get_distance", to: "distances#get_distance", as: 'get_distance'  
    
  root "distances#index" 
end
