class CreateFeatureOptionActions < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_option_actions do |t|
      t.integer :feature_option_id
      t.integer :action_id
      t.integer :level
    end
  end
end
