class SkillsetSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :skills
end
