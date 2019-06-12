class AddRaceIdToCharacter < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :race_id, :integer
  end
end
