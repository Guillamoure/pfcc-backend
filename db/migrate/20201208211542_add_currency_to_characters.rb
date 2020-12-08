class AddCurrencyToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :pp, :integer
    add_column :characters, :gp, :integer
    add_column :characters, :sp, :integer
    add_column :characters, :cp, :integer
  end
end
