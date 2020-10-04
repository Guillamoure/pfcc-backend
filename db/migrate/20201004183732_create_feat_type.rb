class CreateFeatType < ActiveRecord::Migration[5.2]
  def change
    create_table :feat_types do |t|
      t.string :name
    end
  end
end
