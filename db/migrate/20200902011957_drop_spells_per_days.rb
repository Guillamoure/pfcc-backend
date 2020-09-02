class DropSpellsPerDays < ActiveRecord::Migration[5.2]
  def change
    drop_table :spells_per_days do |t|
      t.integer :klass_id
      t.integer :klass_level
      t.integer :spells
      t.integer :spell_level
    end
  end
end
