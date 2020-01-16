class CreateCharacterMagicItemContainers < ActiveRecord::Migration[5.2]
  def change
    create_table :character_magic_item_containers do |t|
      t.integer :character_magic_item_id
      t.integer :container_id
    end
  end
end
