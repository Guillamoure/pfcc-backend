class AddMaxHpToCharacter < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :max_hp, :integer, default: 0
  end
end
