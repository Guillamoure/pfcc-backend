class Character < ApplicationRecord
  belongs_to :user
  belongs_to :race
  belongs_to :skillset

  has_many :character_skillset_skills, dependent: :destroy
  has_many :character_klasses, dependent: :destroy
  has_many :klasses, through: :character_klasses
  has_many :klass_features, through: :klasses

  has_many :prepared_spells
  has_many :known_spells

  validates :name, presence: true

end
