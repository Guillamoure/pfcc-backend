class CreateCreatureFeats < ActiveRecord::Migration[5.2]
  def change
    create_table :creature_feats do |t|
      t.integer :creature_id
      t.integer :feat_id
    end
  end
end
