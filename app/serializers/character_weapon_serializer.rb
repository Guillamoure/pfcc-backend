class CharacterWeaponSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :masterwork, :discovered, :known, :equipped, :weapon

  def weapon
    WeaponSerializer.new(self.object.weapon)
  end
end
