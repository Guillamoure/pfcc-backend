class CreateKlassSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :klass_spells do |t|
      t.integer :klass_id
      t.integer :spell_id
      t.integer :spell_level
    end
  end
end
