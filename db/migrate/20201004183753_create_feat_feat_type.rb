class CreateFeatFeatType < ActiveRecord::Migration[5.2]
  def change
    create_table :feat_feat_types do |t|
      t.integer :feat_id
      t.integer :feat_type_id
    end
  end
end
