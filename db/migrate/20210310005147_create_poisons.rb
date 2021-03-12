class CreatePoisons < ActiveRecord::Migration[5.2]
  def change
    create_table :poisons do |t|
      t.string :name
      t.string :affliction_type
      t.integer :fortitude_dc
      t.string :onset
      t.string :frequency
      t.string :effect
      t.string :cure
      t.float :price_in_gp
      t.integer :source_id
    end
  end
end
