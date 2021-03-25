class CreateCharacterPotions < ActiveRecord::Migration[5.2]
  def change
    create_table :character_potions do |t|
      t.integer :character_id
      t.integer :spell_id
      t.integer :caster_level
      t.string :potion_or_oil
      t.boolean :known, default: false
      t.boolean :discovered, default: false
    end
  end
end
