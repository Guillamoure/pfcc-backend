class CreateKnownSpellsPerLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :known_spells_per_levels do |t|
      t.integer :feature_spellcasting_id
      t.integer :klass_level
      t.integer :spells
      t.integer :spell_level
    end
  end
end
