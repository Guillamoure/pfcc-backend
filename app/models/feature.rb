class Feature < ApplicationRecord
  # belongs_to :magic_item
  belongs_to :action, optional: true
  has_one :usage, class_name: 'FeatureUsage'
  has_many :feature_usage_spell_options, through: :usage
  has_many :spells, through: :feature_usage_spell_options
  has_many :skill_bonuses, class_name: 'FeatureSkillBonus'
  has_many :stat_bonuses, class_name: 'FeatureStatBonus'
  has_many :skill_notes, class_name: 'FeatureSkillNote'
  has_many :stat_notes, class_name: 'FeatureStatNote'
  has_many :movements, class_name: 'FeatureMovement'
  has_many :languages, class_name: 'FeatureLanguage'
  has_one :feature_container
  has_one :loading, class_name: 'FeatureLoading'
  has_many :weapon_proficiencies, class_name: 'FeatureWeaponProficiency'

end
