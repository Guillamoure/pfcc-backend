class CharacterCampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :character_magic_items, :character_klasses

  def character_magic_items
    self.object.character_magic_items.map do |cmi|
      CharacterMagicItemSerializer.new(cmi)
    end
  end

end
