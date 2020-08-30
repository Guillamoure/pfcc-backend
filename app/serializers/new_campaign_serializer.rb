class NewCampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :months, :days

  has_many :months
  has_many :days

end
