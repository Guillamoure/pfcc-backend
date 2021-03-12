class CharacterPoison < ApplicationRecord
  belongs_to :character
  belongs_to :poison
end
