class MagicItem < ApplicationRecord

  has_many :magic_item_features
  has_many :features, through: :magic_item_features
  has_one :action, through: :features
end
