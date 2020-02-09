class AddAlchemyToSpellcastings < ActiveRecord::Migration[5.2]
  def change
    add_column :spellcastings, :alchemy, :boolean, default: false
  end
end
