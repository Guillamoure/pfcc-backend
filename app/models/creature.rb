class Creature < ApplicationRecord
  belongs_to :creature_type
  has_many :creature_feats
  has_many :feats, through: :creature_feats
end
