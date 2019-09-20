class AddDurationColumnsToSpells < ActiveRecord::Migration[5.2]
  def change
    add_column :spells, :duration, :string
    add_column :spells, :time, :integer
    add_column :spells, :unit_of_time, :string
    add_column :spells, :increase_per_level, :integer
    add_column :spells, :dismissible, :boolean
    add_column :spells, :concentration, :boolean
    remove_column :spells, :duration_id
  end
end
