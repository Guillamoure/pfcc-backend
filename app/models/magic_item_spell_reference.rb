class MagicItemSpellReference < ApplicationRecord
  belongs_to :magic_item
  belongs_to :spell
end
