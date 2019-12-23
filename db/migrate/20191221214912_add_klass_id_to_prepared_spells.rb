class AddKlassIdToPreparedSpells < ActiveRecord::Migration[5.2]
  def change
    add_column :prepared_spells, :klass_id, :integer
  end
end
