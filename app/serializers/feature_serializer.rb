class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :action, :usage, :name, :feature_usage_spell_options, :skill_bonus, :spells, :feature_container

end
