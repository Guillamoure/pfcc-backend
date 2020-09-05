class CreateSpellList < ActiveRecord::Migration[5.2]
  def change
    create_table :spell_lists do |t|
      t.string :name
    end
  end
end
