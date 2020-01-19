class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :action, :usage, :name, :feature_usage_spell_options, :skill_bonus, :spells, :feature_container, :stat_bonus, :skill_note, :stat_note, :movement

  has_one :stat_bonus
  has_one :skill_bonus

end
