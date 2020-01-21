class Character < ApplicationRecord
  belongs_to :user
  belongs_to :race
  belongs_to :skillset

  belongs_to :campaign
  has_many :allies, through: :campaign, source: :characters

  has_many :character_skillset_skills, dependent: :destroy
  has_many :character_klasses, dependent: :destroy
  has_many :klasses, through: :character_klasses
  has_many :klass_features, through: :klasses

  has_many :prepared_spells, dependent: :destroy
  has_many :known_spells, dependent: :destroy
  has_many :cast_spells, dependent: :destroy
  has_many :character_magic_items, dependent: :destroy
  has_many :magic_items, through: :character_magic_items
  has_many :character_magic_item_feature_usages, through: :character_magic_items
  has_many :character_magic_item_feature_usage_options, through: :character_magic_items



  validates :name, presence: true

end
