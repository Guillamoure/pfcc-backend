class AddColumnsToWeaponLoading < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_loadings, :wrong_ammo, :boolean
    add_column :feature_loadings, :wrong_ammo_attack_penalty, :integer
    add_column :feature_loadings, :wrong_ammo_size_decrease_steps, :integer
  end
end
