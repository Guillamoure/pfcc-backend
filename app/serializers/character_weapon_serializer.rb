class CharacterWeaponSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :weapon, :masterwork, :discovered, :known, :equipped
end
