class AddLevelToCharacterKlasses < ActiveRecord::Migration[5.2]
  def change
    add_column :character_klasses, :level, :integer
  end
end
