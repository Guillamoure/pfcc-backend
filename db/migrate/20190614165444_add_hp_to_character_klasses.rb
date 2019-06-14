class AddHpToCharacterKlasses < ActiveRecord::Migration[5.2]
  def change
    add_column :character_klasses, :hp, :integer
    remove_column :characters, :hp
  end
end
