class CreateFeatFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :feat_features do |t|
      t.integer :feat_id
      t.integer :feature_id
    end
  end
end
