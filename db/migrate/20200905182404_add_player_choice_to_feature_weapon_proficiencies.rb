class AddPlayerChoiceToFeatureWeaponProficiencies < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_weapon_proficiencies, :player_choice, :boolean
  end
end
