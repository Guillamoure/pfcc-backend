class CreateFeatureStatBonusCondition < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_stat_bonus_conditions do |t|
      t.integer :feature_stat_bonus_id
      t.string :condition
    end
  end
end
