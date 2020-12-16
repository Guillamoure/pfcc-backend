class RacialTrait < ApplicationRecord
  belongs_to :race
  has_many :alternate_trait_replace_racial_traits

  has_many :racial_trait_associated_spells
  has_many :associated_spells, through: :racial_trait_associated_spells, class_name: "Spell", source: "spell"

  validates :name, presence: true
  validates :description, presence: true

end
