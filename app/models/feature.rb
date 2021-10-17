class Feature < ApplicationRecord
  # belongs_to :magic_item
  belongs_to :action, optional: true
  has_one :usage, class_name: 'FeatureUsage', dependent: :destroy
  has_many :feature_usage_spell_options, through: :usage, dependent: :destroy
  has_many :spells, through: :feature_usage_spell_options, dependent: :destroy
  has_many :skill_bonuses, class_name: 'FeatureSkillBonus', dependent: :destroy
  has_many :stat_bonuses, class_name: 'FeatureStatBonus', dependent: :destroy
  has_many :skill_notes, class_name: 'FeatureSkillNote', dependent: :destroy
  has_many :stat_notes, class_name: 'FeatureStatNote', dependent: :destroy
  has_many :movements, class_name: 'FeatureMovement', dependent: :destroy
  has_many :languages, class_name: 'FeatureLanguage', dependent: :destroy
  has_one :feature_container, dependent: :destroy
  has_one :loading, class_name: 'FeatureLoading', dependent: :destroy
  has_many :weapon_proficiencies, class_name: 'FeatureWeaponProficiency', dependent: :destroy
  has_many :armor_proficiencies, class_name: 'FeatureArmorProficiency', dependent: :destroy
  has_many :conditions, class_name: 'FeatureCondition', dependent: :destroy
  has_many :applications, class_name: 'FeatureApplication', dependent: :destroy
  has_many :status_conditions, class_name: 'FeatureStatusCondition', dependent: :destroy
  has_many :alternate_actions, class_name: 'FeatureAlternateAction', dependent: :destroy
  has_many :saving_throws, class_name: 'FeatureSavingThrow', dependent: :destroy
  has_one :spellcasting, class_name: 'FeatureSpellcasting', dependent: :destroy
  has_many :display_descriptions, class_name: 'FeatureDisplayDescription', dependent: :destroy
  has_many :damages, class_name: 'FeatureDamage', dependent: :destroy
  has_many :character_choices, class_name: 'FeatureCharacterChoice', dependent: :destroy
  has_many :steps, class_name: 'FeatureStep', dependent: :destroy
  has_one :bonus_spell_slot, class_name: 'FeatureBonusSpellSlot', dependent: :destroy
  has_many :spontaneous_castings, class_name: 'FeatureSpontaneousCasting', dependent: :destroy
  has_one :attack, class_name: 'FeatureAttack', dependent: :destroy
  has_many :castable_spells, class_name: 'FeatureCastableSpell', dependent: :destroy
  has_many :weapon_applications, class_name: 'FeatureWeaponApplication', dependent: :destroy
  has_one :animal, class_name: 'FeatureAnimal', dependent: :destroy
  has_many :bonus_feat, class_name: 'FeatureBonusFeat', dependent: :destroy

  has_one :klass_feature_feature, dependent: :destroy
  has_one :klass_feature, through: :klass_feature_feature

end
