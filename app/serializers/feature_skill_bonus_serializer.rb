class FeatureSkillBonusSerializer < ActiveModel::Serializer
  attributes :id, :skill_id, :bonus, :bonus_type, :duration, :custom, :specific_statistic, :bonus_multiplier, :round_down, :minimum_bonus, :bonus_multiplier_based_on_feature_level

end
