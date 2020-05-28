class AddAmmunitionAmountToCharacterWeapons < ActiveRecord::Migration[5.2]
  def change
    add_column :character_weapons, :ammunition_amount, :integer
  end
end
