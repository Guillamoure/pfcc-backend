class CreateFeatureMovement < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_movements do |t|
      t.integer :feature_id
      t.string :movement
      t.integer :feet
      t.boolean :bonus, default: false
      t.boolean :penalty, default: false
    end
  end
end
