class FeatType < ApplicationRecord
  has_many :feat_feat_types, dependent: :destroy
  has_many :feats, dependent: :destroy
end
