class Character < ApplicationRecord
  belongs_to :user
  belongs_to :race
  has_many :character_klasses
  has_many :klasses, through: :character_klasses

  validates :name, presence: true

end
