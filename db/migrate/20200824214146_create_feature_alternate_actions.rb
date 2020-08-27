class CreateFeatureAlternateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_alternate_actions do |t|
      t.integer :feature_id
      t.integer :level
      t.integer :action_id
    end
  end
end
