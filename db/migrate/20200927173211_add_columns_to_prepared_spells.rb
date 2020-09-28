class AddColumnsToPreparedSpells < ActiveRecord::Migration[5.2]
  def change
    add_column :prepared_spells, :bonus_spell, :boolean, default: false
    add_column :prepared_spells, :alternate_source_id, :integer
    add_column :prepared_spells, :alternate_source_ability, :string
  end
end
