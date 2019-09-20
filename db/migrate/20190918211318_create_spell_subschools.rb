class CreateSpellSubschools < ActiveRecord::Migration[5.2]
  def change
    create_table :spell_subschools do |t|
      t.integer :spell_id
      t.integer :subschool_id
    end
  end
end
