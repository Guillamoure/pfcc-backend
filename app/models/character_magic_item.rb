class CharacterMagicItem < ApplicationRecord
  belongs_to :character
  belongs_to :magic_item
  has_many :character_magic_item_feature_usages, dependent: :destroy
  has_many :character_magic_item_feature_usage_options, dependent: :destroy
  has_one :stored_character_magic_item, dependent: :destroy
  has_one :character_magic_item_container, dependent: :destroy
  has_one :container, through: :character_magic_item_container, dependent: :destroy
end
