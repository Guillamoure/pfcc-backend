class AddKlassIdToKnowSpells < ActiveRecord::Migration[5.2]
  def change
    add_column :known_spells, :klass_id, :integer
  end
end
