class CreateCastSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :cast_spells do |t|
      t.integer :character_id
      t.integer :klass_id
      t.integer :spell_level
    end
  end
end
