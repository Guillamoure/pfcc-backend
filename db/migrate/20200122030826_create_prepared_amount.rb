class CreatePreparedAmount < ActiveRecord::Migration[5.2]
  def change
    create_table :prepared_amounts do |t|
      t.integer :spell_level
      t.integer :klass_level
      t.integer :spells
      t.integer :klass_id
    end
  end
end
