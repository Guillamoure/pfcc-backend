class CreateCharacterWands < ActiveRecord::Migration[5.2]
  def change
    create_table :character_wands do |t|
      t.integer :character_id
      t.integer :spell_id
      t.integer :charges
      t.integer :caster_level
      t.string :name
      t.string :description
      t.boolean :known
      t.boolean :discovered
    end
  end
end
