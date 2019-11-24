class AddSpellIdToCastSpells < ActiveRecord::Migration[5.2]
  def change
    add_column :prepared_spells, :cast, :boolean, default: false
  end
end
