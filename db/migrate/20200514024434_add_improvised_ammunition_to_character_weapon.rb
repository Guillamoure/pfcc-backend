class AddImprovisedAmmunitionToCharacterWeapon < ActiveRecord::Migration[5.2]
  def change
    add_column :character_weapons, :improvised_ammunition, :boolean, default: false
  end
end
