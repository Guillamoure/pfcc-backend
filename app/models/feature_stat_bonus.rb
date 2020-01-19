class FeatureStatBonus < ApplicationRecord
  belongs_to :feature
  has_many :feature_stat_bonus_conditions
end
