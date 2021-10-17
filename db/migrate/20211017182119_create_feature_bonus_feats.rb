class CreateFeatureBonusFeats < ActiveRecord::Migration[6.1]
  def change
    create_table :feature_bonus_feats do |t|
      t.integer :feature_id
      t.integer :feat_id
      t.boolean :player_choice
    end
  end
end
