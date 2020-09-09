class AddFeatureSpellcastingIdToPreparedSpells < ActiveRecord::Migration[5.2]
  def change
    add_column :prepared_spells, :feature_spellcasting_id, :integer
    add_column :prepared_spells, :spell_list_spell_id, :integer
    remove_column :prepared_spells, :klass_spell_id, :integer
    remove_column :prepared_spells, :klass_id, :integer
  end
end
