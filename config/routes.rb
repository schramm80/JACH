Rails.application.routes.draw do
  
  root to:  'landing#home'
  get "landings/home"
  
  
  get       '/campaigns/status/:type' => 'campaigns#index', as:  :campaign_status

  resources :landing
  resources :users
  resources :bookings
  resources :campaigns
  resources :social_media_profile


  
end
