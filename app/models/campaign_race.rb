class CampaignRace < ApplicationRecord
  belongs_to :race
  belongs_to :campaign
end
