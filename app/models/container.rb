class Container < ApplicationRecord
  has_one :character_magic_item_containers
  has_one :parent_cmi, through: :character_magic_item_containers, class_name: 'CharacterMagicItem'
  has_many :stored_magic_items, class_name: 'StoredCharacterMagicItem', dependent: :destroy
end
