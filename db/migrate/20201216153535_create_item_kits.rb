class CreateItemKits < ActiveRecord::Migration[5.2]
  def change
    create_table :item_kits do |t|
      t.string :name
      t.string :description
    end
  end
end
