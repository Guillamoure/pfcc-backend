class ItemKit < ApplicationRecord
  has_many :item_kit_items
  has_many :items, through: :item_kit_items

  def weight
    self.items.reduce(0.0) {|sum, item| sum + item.weight}
  end

  def price_in_gp
    self.items.reduce(0.0) {|sum, item| sum + item.price_in_gp}
  end

end
