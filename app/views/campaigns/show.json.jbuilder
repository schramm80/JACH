
  json.id @campaign.id
  json.name @campaign.name
  json.status @campaign.status
  json.budget @campaign.budget
  json.starts_at @campaign.starts_at
  json.ends_at @campaign_ends
  json.brand @campaign.brand
  json.description @campaign.description
  json.created_at @campaign.created_at
  json.updated_at @campaign.updated_at

json.bookings @bookings do |b|
  json.id b.id
  json.campaign_id b.campaign_id
  json.social_media_profile_id b.social_media_profile_id
  json.status b.status
  json.comment b.id
  json.price b.id
  json.created_at b.created_at
  json.updated_at b.updated_at

end
