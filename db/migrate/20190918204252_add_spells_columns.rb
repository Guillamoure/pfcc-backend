class AddSpellsColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :spells, :casting_time_id, :integer
  end
end
