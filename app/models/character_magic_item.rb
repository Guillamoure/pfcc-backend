class CharacterMagicItem < ApplicationRecord
  belongs_to :character
  belongs_to :magic_item
  has_many :character_magic_item_feature_usages
  has_one :stored_character_magic_item
  has_one :character_magic_item_container
  has_one :container, through: :character_magic_item_container
end
