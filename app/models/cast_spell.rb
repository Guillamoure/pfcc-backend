class CastSpell < ApplicationRecord
  belongs_to :character
  belongs_to :feature_spellcasting
end
