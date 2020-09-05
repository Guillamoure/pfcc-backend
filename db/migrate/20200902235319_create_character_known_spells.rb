class CreateCharacterKnownSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :character_known_spells do |t|
      t.integer :character_id
      t.integer :spell_list_spell_id
      t.integer :feature_spellcasting_id
    end
  end
end
