class Feature < ApplicationRecord
  # belongs_to :magic_item
  belongs_to :action, optional: true
  has_one :usage, class_name: 'FeatureUsage'
  has_many :feature_usage_spell_options, through: :usage
  has_many :spells, through: :feature_usage_spell_options
  has_one :skill_bonus, class_name: 'FeatureSkillBonus'
  has_one :feature_container
end
