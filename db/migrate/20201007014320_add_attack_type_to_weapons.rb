class AddAttackTypeToWeapons < ActiveRecord::Migration[5.2]
  def change
    add_column :weapons, :attack_type, :string
  end
end
