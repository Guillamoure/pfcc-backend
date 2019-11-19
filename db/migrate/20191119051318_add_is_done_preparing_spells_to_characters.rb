class AddIsDonePreparingSpellsToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :is_done_preparing_spells, :boolean, default: false
  end
end
