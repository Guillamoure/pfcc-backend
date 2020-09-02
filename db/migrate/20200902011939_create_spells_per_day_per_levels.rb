class CreateSpellsPerDayPerLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :spells_per_day_per_levels do |t|
      t.integer :feature_spellcasting_id
      t.integer :klass_level
      t.integer :spells
      t.integer :spell_level
    end
  end
end
