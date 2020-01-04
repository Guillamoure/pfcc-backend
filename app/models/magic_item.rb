class MagicItem < ApplicationRecord
  has_many :magic_item_spell_references
  has_many :spells, through: :magic_item_spell_references
end
