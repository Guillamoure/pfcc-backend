class CreateSummonedCreatureListCreatures < ActiveRecord::Migration[5.2]
  def change
    create_table :summoned_creature_list_creatures do |t|
      t.integer :summoned_creature_list_id
      t.integer :creature_id
      t.integer :step
    end
  end
end
