class CreateFeatureActions < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_actions do |t|
      t.integer :klass_feature_id
      t.integer :action_id
      t.integer :level
    end
  end
end
