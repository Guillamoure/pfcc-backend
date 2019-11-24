class AddItemToSpellComponents < ActiveRecord::Migration[5.2]
  def change
    add_column :spell_components, :item, :string
  end
end
