class CreateFeatureContainers < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_containers do |t|
      t.integer :feature_id
      t.integer :weight
      t.integer :volume_cubic_feet
    end
  end
end
