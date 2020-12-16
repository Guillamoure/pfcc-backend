class AlternateRacialTrait < ApplicationRecord
  belongs_to :race
  belongs_to :source
  has_many :alternate_trait_replace_racial_traits

  has_many :alternate_racial_trait_associated_spells
  has_many :associated_spells, through: :alternate_racial_trait_associated_spells, class_name: "Spell", source: "spell"
end
