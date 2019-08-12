class ChangeCharacterKlasses < ActiveRecord::Migration[5.2]
  def change
    add_column :character_klasses, :feat_id, :integer
    add_column :character_klasses, :ability_score_improvement, :string
    remove_column :character_klasses, :level

  end
end
