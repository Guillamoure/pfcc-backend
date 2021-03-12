class CreateCreatureMovements < ActiveRecord::Migration[5.2]
  def change
    create_table :creature_movements do |t|
      t.integer :creature_id
      t.string :movement
      t.integer :feet
    end
  end
end
