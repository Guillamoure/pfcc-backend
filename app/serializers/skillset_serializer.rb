class SkillsetSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :skillset_skills
end
