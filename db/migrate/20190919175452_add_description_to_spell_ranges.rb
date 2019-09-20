class AddDescriptionToSpellRanges < ActiveRecord::Migration[5.2]
  def change
    add_column :spell_ranges, :description, :string
  end
end
