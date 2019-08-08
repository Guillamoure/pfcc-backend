class Skillset < ApplicationRecord
  has_many :skillset_skills, dependent: :destroy
  has_many :skills, through: :skillset_skills

  has_many :users
  has_many :characters
end
