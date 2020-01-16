class FeatureUsageSpellOption < ApplicationRecord
  belongs_to :feature_usage
  belongs_to :spell
end
