class SpellsListSpell < ApplicationRecord
  belongs_to :spells_list
  belongs_to :spell
end
