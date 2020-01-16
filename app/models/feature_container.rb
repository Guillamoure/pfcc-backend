class FeatureContainer < ApplicationRecord
  belongs_to :feature
  has_many :stored_character_magic_items
  has_many :character_magic_items, through: :stored_character_magic_items
  has_many :magic_items, through: :character_magic_items
end
