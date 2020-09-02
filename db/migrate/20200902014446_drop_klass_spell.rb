class DropKlassSpell < ActiveRecord::Migration[5.2]
  def change
    drop_table :klass_spells do |t|
      t.integer :klass_id
      t.integer :spell_id
      t.integer :spell_level
    end
  end
end
