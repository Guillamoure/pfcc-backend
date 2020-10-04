class CreateFeats < ActiveRecord::Migration[5.2]
  def change
    create_table :feats do |t|
      t.string :name
      t.string :benefit
      t.string :special
      t.string :normal
      t.string :description
      t.string :blurb
      t.integer :source_id
    end
  end
end
