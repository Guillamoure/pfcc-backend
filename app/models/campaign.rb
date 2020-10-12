class Campaign < ApplicationRecord
  belongs_to :dm, class_name: 'User', foreign_key: 'dm_id'
  belongs_to :calendar
  belongs_to :skillset
  has_many :characters
  has_many :campaign_random_month_days

  has_many :campaign_races, dependent: :destroy
  has_many :races, through: :campaign_races
  has_many :campaign_klasses, dependent: :destroy
  has_many :klasses, through: :campaign_klasses

  has_many :encounters
end
