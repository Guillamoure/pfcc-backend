class CreateFeatureLoading < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_loadings do |t|
      t.integer :feature_id
      t.integer :capacity
      t.boolean :must_reload_after_use
    end
  end
end
