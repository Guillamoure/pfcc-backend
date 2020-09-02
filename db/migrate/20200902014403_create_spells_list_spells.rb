class CreateSpellsListSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells_list_spells do |t|
      t.integer :spells_list_id
      t.integer :spell_id
      t.integer :spell_level
    end
  end
end
