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
  has_many :armor_proficiencies, class_name: 'FeatureArmorProficiency'
  has_many :conditions, class_name: 'FeatureCondition'
  has_many :applications, class_name: 'FeatureApplication'
  has_many :status_conditions, class_name: 'FeatureStatusCondition'
  has_many :alternate_actions, class_name: 'FeatureAlternateAction'
  has_many :saving_throws, class_name: 'FeatureSavingThrow'
  has_one :spellcasting, class_name: 'FeatureSpellcasting'
  has_many :display_descriptions, class_name: 'FeatureDisplayDescription'
  has_many :damages, class_name: 'FeatureDamage'
  has_many :character_choices, class_name: 'FeatureCharacterChoice'
  has_many :steps, class_name: 'FeatureStep'
  has_one :bonus_spell_slot, class_name: 'FeatureBonusSpellSlot'
  has_many :spontaneous_castings, class_name: 'FeatureSpontaneousCasting'
  has_one :attack, class_name: 'FeatureAttack'

  has_one :klass_feature_feature
  has_one :klass_feature, through: :klass_feature_feature

end
