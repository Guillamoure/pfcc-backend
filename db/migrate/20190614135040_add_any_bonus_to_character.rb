class AddAnyBonusToCharacter < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :any_bonus, :string
  end
end
