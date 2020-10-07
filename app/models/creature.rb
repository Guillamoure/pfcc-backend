class Creature < ApplicationRecord
  belongs_to :creature_type
  has_many :creature_feats
  has_many :feats, through: :creature_feats

  has_many :creature_weapons
  has_many :weapons, through: :creature_weapons
end
