Rails.application.routes.draw do
  
  root to:  'landing#home'
  get "landings/home"

  resources :landing
  resources :users
  resources :bookings
  resources :campaigns
  resources :social_media_profile
  
end
