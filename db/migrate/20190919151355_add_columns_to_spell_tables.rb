class AddColumnsToSpellTables < ActiveRecord::Migration[5.2]
  def change
    add_column :ranges, :description, :string
    add_column :components, :abbreviation, :string
    remove_column :spells, :casting_time_id
    add_column :spells, :action_id, :integer
    add_column :spells, :duration_id, :integer
  end
end
