class FeatureSkillBonusSerializer < ActiveModel::Serializer
  attributes :id, :skill_id, :bonus, :bonus_type, :duration

end
