class CreatePreparedSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :prepared_spells do |t|
      t.integer :klass_spell_id
      t.integer :character_id
      t.integer :spell_level
    end
  end
end
