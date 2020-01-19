class CreateFeatureStatBonus < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_stat_bonus do |t|
      t.integer :feature_id
      t.string :statistic
      t.integer :bonus
      t.string :bonus_type
      t.string :duration
    end
  end
end
