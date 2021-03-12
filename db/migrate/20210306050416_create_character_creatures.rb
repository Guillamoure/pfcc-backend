class CreateCharacterCreatures < ActiveRecord::Migration[5.2]
  def change
    create_table :character_creatures do |t|
      t.integer :character_id
      t.integer :creature_id
      t.string :relationship
      t.integer :feature_id
      t.string :name
      t.string :description
      t.integer :lethal_damage
      t.integer :non_lethal_damage
      t.integer :temp_hp
    end
  end
end
