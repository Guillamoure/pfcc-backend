class CreateFeatureStatNote < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_stat_notes do |t|
      t.integer :feature_id
      t.string :statistic
      t.string :note
    end
  end
end
