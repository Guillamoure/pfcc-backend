class ChangeRangeToSpellRangeInSpellsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :spells, :spell_range_id, :integer
    remove_column :spells, :range_id, :integer
  end
end
