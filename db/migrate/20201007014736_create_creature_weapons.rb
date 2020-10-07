class CreateCreatureWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :creature_weapons do |t|
      t.integer :creature_id
      t.integer :weapon_id
      t.boolean :masterwork, default: false
      t.string :name
    end
  end
end
