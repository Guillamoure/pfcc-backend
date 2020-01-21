class FeatureUsageOption < ApplicationRecord
  belongs_to :feature_usage
  has_many :character_feature_usage_options
end
