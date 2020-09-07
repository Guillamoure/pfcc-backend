class AddFeatureSpellcastingIdToCastSpells < ActiveRecord::Migration[5.2]
  def change
    add_column :cast_spells, :feature_spellcasting_id, :integer
    remove_column :cast_spells, :klass_id, :integer
  end
end
