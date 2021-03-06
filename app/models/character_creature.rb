class CharacterCreature < ApplicationRecord
  belongs_to :character
  belongs_to :creature
  belongs_to :feature, optional: true
end
