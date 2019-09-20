class KnownSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :known_spells do |t|
      t.integer :klass_spell_id
      t.integer :character_id
    end
  end
end
