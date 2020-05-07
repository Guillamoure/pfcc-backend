class CharacterMagicItemSerializer < ActiveModel::Serializer
  attributes :id, :magic_item, :discovered, :character_magic_item_feature_usages, :known, :equipped, :false_desc, :stored_character_magic_item, :container, :character_magic_item_feature_usage_options

  def magic_item
    MagicItemSerializer.new(self.object.magic_item)
  end

  def container
    if self.object.class != CharacterMagicItemSerializer && self.object.character_magic_item_container
      self.object.character_magic_item_container.container
    end
  end

end
