class CreateCharacterMagicItems < ActiveRecord::Migration[5.2]
  def change
    create_table :character_magic_items do |t|
      t.integer :character_id
      t.integer :magic_item_id
      t.string :false_desc
      t.boolean :discovered, default: false
      t.boolean :known, default: false
      t.boolean :equipped, default: false
    end
  end
end
