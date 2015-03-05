Rails.application.routes.draw do
  
  root 'user'

  
  resources :user
  resources :booking
  resources :campaign
  resources :social_media_profile
  
end
