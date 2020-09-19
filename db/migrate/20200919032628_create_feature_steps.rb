class CreateFeatureSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_steps do |t|
      t.integer :feature_id
      t.integer :applicable_level
      t.integer :step
      t.string :sub_feature
    end
  end
end
