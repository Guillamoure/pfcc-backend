class FeatureUsage < ApplicationRecord
  belongs_to :feature
  has_many :feature_usage_spell_options
  has_many :spells, through: :feature_usage_spell_options
  has_many :options, class_name: 'FeatureUsageOption'
  has_many :character_klass_feature_usages

  belongs_to :toggle_off_action, class_name: 'Action', optional: true
end
