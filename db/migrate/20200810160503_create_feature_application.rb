class CreateFeatureApplication < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_applications do |t|
      t.integer :feature_id
      t.string :calculate_before
      t.string :calculate_after
      t.boolean :affects_allies, default: nil
    end
  end
end
