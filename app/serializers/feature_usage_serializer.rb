class FeatureUsageSerializer < ActiveModel::Serializer
  attributes :id, :destroy_after_use, :limit, :unit, :limit_frequency, :adjustable, :toggleable, :options, :feature_usage_spell_options

end
