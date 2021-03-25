class CreateCharacterScrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :character_scrolls do |t|
      t.integer :character_id
      t.integer :spell_id
      t.string :scroll_type
      t.integer :spell_level
      t.boolean :known, default: false
      t.boolean :discovered, default: false
    end
  end
end
