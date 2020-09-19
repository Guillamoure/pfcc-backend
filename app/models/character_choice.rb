class CharacterChoice < ApplicationRecord
  belongs_to :feature_character_choice
  belongs_to :character
end
