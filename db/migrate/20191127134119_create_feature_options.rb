class CreateFeatureOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_options do |t|
      t.string :name
      t.string :description
      t.integer :klass_feature_id
      t.integer :level_available
    end
  end
end
