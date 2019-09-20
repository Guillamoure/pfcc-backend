class CreateSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :description
      t.string :target
      t.string :saving_throw
      t.boolean :spell_resistance
    end
  end
end
