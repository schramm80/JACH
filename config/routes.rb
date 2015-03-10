Rails.application.routes.draw do
  
  root to:  'campaigns#index'
  
  resources :users
  resources :bookings
  resources :campaigns
  resources :social_media_profile
  
end
