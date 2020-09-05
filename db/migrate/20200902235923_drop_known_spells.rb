class DropKnownSpells < ActiveRecord::Migration[5.2]
  def change
    drop_table :known_spells do |t|
      t.integer :character_id
      t.integer :spell_list_spell_id
      t.integer :feature_spellcasting_id
    end
  end
end
