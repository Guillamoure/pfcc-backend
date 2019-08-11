class Skill < ApplicationRecord
  has_many :skillset_skills, dependent: :destroy
  has_many :skillsets, through: :skillset_skills

  has_many :class_skillset_skills, dependent: :destroy
  has_many :klasses, through: :class_skillset_skills

  has_many :character_skillset_skills
end
