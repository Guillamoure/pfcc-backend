class CreateRaceAbilityScoreModifiers < ActiveRecord::Migration[5.2]
  def change
    create_table :race_ability_score_modifiers do |t|
      t.integer :race_id
      t.string :ability_score
      t.integer :bonus
    end
  end
end
