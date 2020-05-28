class AddCharacterWeaponAmmunitionToCharacterWeapon < ActiveRecord::Migration[5.2]
  def change
    add_column :character_weapons, :character_weapon_ammunition_id, :integer
  end
end
