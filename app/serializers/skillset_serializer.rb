class SkillsetSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :skillset_skills
  has_many :skills, through: :skillset_skills
end
