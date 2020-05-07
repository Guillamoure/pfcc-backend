class CharacterArmorSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :armor, :masterwork, :discovered, :known, :equipped, :base_armor, :extra_armor_options, :armor_options
end
