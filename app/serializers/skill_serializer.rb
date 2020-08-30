class SkillSerializer < ActiveModel::Serializer
  attributes :name, :ability_score, :description, :id, :untrained, :customizable, :knowledge

end
