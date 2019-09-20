class AddColumnsToSpells < ActiveRecord::Migration[5.2]
  def change
    add_column :spells, :range_id, :integer
    add_column :spells, :magic_school_id, :integer
  end
end
