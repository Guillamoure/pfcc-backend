class CreateEncounterCreatures < ActiveRecord::Migration[5.2]
  def change
    create_table :encounter_creatures do |t|
      t.integer :encounter_id
      t.integer :creature_id
      t.integer :count
    end
  end
end
