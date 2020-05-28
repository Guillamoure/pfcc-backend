class CharacterWeaponSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :masterwork, :discovered, :known, :equipped, :weapon, :magazine, :ammunition_amount, :character_weapon_ammunition_id, :improvised_ammunition

  def weapon
    WeaponSerializer.new(self.object.weapon)
  end
end
