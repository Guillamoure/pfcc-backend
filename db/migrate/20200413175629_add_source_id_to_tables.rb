class AddSourceIdToTables < ActiveRecord::Migration[5.2]
  def change
    add_column :races, :source_id, :integer
    add_column :klasses, :source_id, :integer
    add_column :favored_klass_bonuses, :source_id, :integer
    add_column :magic_items, :source_id, :integer
    add_column :racial_traits, :source_id, :integer
    add_column :spells, :source_id, :integer
    add_column :weapons, :source_id, :integer
  end
end
