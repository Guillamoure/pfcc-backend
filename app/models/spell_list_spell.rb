class SpellListSpell < ApplicationRecord
  belongs_to :spell_list
  belongs_to :spell
end
