class SkillSerializer < ActiveModel::Serializer
  attributes :name, :ability_score, :description, :id, :untrained, :customizable, :knowledge, :blurb, :action, :try_again, :special, :skill_unlock_5, :skill_unlock_10, :skill_unlock_15, :skill_unlock_20

end
