class ItemKitItem < ApplicationRecord
  belongs_to :item
  belongs_to :item_kit
end
