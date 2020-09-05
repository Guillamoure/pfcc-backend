class ChangeColumnsOnKnownSpells < ActiveRecord::Migration[5.2]
  def change
    add_column :known_spells, :spell_list_spell_id, :integer
    add_column :known_spells, :feature_spellcasting_id, :integer
    remove_column :known_spells, :klass_id, :integer
    remove_column :known_spells, :klass_spell_id, :integer
  end
end
