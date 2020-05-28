class AddMagazineToCharacterWeapons < ActiveRecord::Migration[5.2]
  def change
    add_column :character_weapons, :magazine, :integer
  end
end
