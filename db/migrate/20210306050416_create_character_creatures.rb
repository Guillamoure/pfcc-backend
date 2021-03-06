class CreateCharacterCreatures < ActiveRecord::Migration[5.2]
  def change
    create_table :character_creatures do |t|
      t.integer :character_id
      t.integer :creature_id
      t.string :relationship
      t.integer :feature_id
    end
  end
end
