class CreateMagicItemFeature < ActiveRecord::Migration[5.2]
  def change
    create_table :magic_item_features do |t|
      t.integer :feature_id
      t.integer :magic_item_id
    end
  end
end
