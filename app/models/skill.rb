class Skill < ApplicationRecord
  has_many :skillset_skills, dependent: :destroy
  has_many :skillsets, through: :skillset_skills
end
