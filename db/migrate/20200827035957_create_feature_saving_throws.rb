class CreateFeatureSavingThrows < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_saving_throws do |t|
      t.integer :feature_id
      t.integer :base
      t.string :ability_score_modifier
      t.float :level_modifier
      t.string :saving_throw
      t.boolean :bonus_multiplier_based_on_feature_level, default: false
    end
  end
end
