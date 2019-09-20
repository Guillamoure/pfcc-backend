class CreateSpellComponents < ActiveRecord::Migration[5.2]
  def change
    create_table :spell_components do |t|
      t.integer :spell_id
      t.integer :component_id
    end
  end
end
