class CharacterMagicItemContainer < ApplicationRecord
  belongs_to :container
  belongs_to :parent_cmi, class_name: 'CharacterMagicItem', foreign_key: 'character_magic_item_id'
end
