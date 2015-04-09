class CampaignSerializer < ActiveModel::Serializer
  attributes :name, :status, :budget, :brand, :description, :bookings

  has_many :bookings

end
