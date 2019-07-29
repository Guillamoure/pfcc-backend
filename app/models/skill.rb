class Skill < ApplicationRecord
  has_many :skillset_skills
  has_many :skillsets, through: :skillset_skills
end
