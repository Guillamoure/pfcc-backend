class CharacterMagicItem < ApplicationRecord
  belongs_to :character
  belongs_to :magic_item
end
