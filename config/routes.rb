Rails.application.routes.draw do
  
  root to:  'user#index'
  
  resources :user
  resources :booking
  resources :campaign
  resources :social_media_profile
  
end
