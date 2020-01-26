class AddPreparedAmountToSpellcasting < ActiveRecord::Migration[5.2]
  def change
    add_column :spellcastings, :prepared_amount, :boolean, default: false
  end
end
