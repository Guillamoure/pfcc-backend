class FeatureUsage < ApplicationRecord
  belongs_to :feature
  has_many :feature_usage_spell_options
  has_many :spells, through: :feature_usage_spell_options
  has_many :options, class_name: 'FeatureUsageOption'
end
