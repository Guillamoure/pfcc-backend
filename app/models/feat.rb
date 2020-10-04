class Feat < ApplicationRecord
  has_many :feat_features, dependent: :destroy
  has_many :features, through: :feat_features, dependent: :destroy
  has_many :feat_feat_types
  has_many :feat_types, through: :feat_feat_types

  belongs_to :source
end
