class FeatureStatBonusSerializer < ActiveModel::Serializer
  attributes :id, :statistic, :bonus, :bonus_type, :duration, :feature_stat_bonus_conditions, :specific_statistic, :bonus_multiplier, :bonus_multiplier_based_on_feature_level, :applicable_level

end
