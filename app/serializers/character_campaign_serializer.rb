class CharacterCampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :character_magic_items, :character_klasses, :character_potions, :character_scrolls, :character_wands

  has_many :character_potions
  has_many :character_scrolls
  has_many :character_wands

  def character_magic_items
    self.object.character_magic_items.map do |cmi|
      CharacterMagicItemSerializer.new(cmi)
    end
  end

end
