class CreateStoredCharacterMagicItems < ActiveRecord::Migration[5.2]
  def change
    create_table :stored_character_magic_items do |t|
      t.integer :character_magic_item_id
      t.integer :container_id
    end
  end
end
