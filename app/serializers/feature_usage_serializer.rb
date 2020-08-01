class FeatureUsageSerializer < ActiveModel::Serializer
  attributes :id, :destroy_after_use, :limit, :unit, :limit_frequency, :adjustable, :toggleable, :options, :feature_usage_spell_options, :wieldable, :base_limit, :base_limit_modifier, :limit_increase_per_level, :toggle_off_action_id, :expend_frequency

end
