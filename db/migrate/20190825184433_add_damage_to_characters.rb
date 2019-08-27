class AddDamageToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :lethal_damage, :integer, default: 0
    add_column :characters, :non_lethal_damage, :integer, default: 0
    add_column :characters, :temp_hp, :integer, default: 0
  end
end
