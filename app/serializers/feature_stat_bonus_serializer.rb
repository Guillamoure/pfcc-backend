class FeatureStatBonusSerializer < ActiveModel::Serializer
  attributes :id, :statistic, :bonus, :bonus_type, :duration, :feature_stat_bonus_conditions
  
end
