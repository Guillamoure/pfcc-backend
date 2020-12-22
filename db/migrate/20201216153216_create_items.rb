class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :description
      t.float :weight
      t.float :price_in_gp
      t.string :craft_skill
      t.integer :craft_dc
    end
  end
end
