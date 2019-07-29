class Skillset < ApplicationRecord
  has_many :skillset_skills
  has_many :skills, through: :skillset_skills

  has_many :users
end
