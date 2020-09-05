class CreateSpellListSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spell_list_spells do |t|
      t.integer :spell_list_id
      t.integer :spell_id
      t.integer :spell_level
    end
  end
end
