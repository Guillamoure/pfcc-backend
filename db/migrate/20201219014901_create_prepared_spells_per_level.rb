class CreatePreparedSpellsPerLevel < ActiveRecord::Migration[5.2]
  def change
    create_table :prepared_spells_per_levels do |t|
      t.integer :spell_level
      t.integer :klass_level
      t.integer :spells
      t.integer :feature_spellcasting_id
    end
  end
end
