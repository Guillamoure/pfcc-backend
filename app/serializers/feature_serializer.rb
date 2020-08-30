class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :action, :usage, :name, :after, :feature_usage_spell_options, :skill_bonuses, :spells, :feature_container, :stat_bonuses, :skill_notes, :stat_notes, :movements, :languages, :loading, :attack_of_opportunity, :weapon_proficiencies, :armor_proficiencies, :conditions, :applications, :status_conditions, :alternate_actions, :saving_throws

  has_one :stat_bonuses
  has_one :skill_bonuses
  has_one :usage

end
