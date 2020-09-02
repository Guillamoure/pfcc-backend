class CreateSpellsList < ActiveRecord::Migration[5.2]
  def change
    create_table :spells_lists do |t|
      t.string :name
    end
  end
end
