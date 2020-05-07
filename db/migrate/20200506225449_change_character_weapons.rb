class ChangeCharacterWeapons < ActiveRecord::Migration[5.2]
  def change
    remove_column :character_weapons, :equipped, :boolean, default: false
    add_column :character_weapons, :equipped, :string
  end
end
