class CharacterWand < ApplicationRecord
  belongs_to :character
  belongs_to :spell
end
