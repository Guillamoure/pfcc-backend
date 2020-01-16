class StoredCharacterMagicItem < ApplicationRecord
  belongs_to :character_magic_item
  belongs_to :container
end
