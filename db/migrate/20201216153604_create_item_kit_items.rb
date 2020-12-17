class CreateItemKitItems < ActiveRecord::Migration[5.2]
  def change
    create_table :item_kit_items do |t|
      t.integer :item_id
      t.integer :item_kit_id
    end
  end
end
