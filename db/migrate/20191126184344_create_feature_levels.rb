class CreateFeatureLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_levels do |t|
      t.integer :klass_feature_id
      t.integer :level
      t.string :table_description
    end
  end
end
