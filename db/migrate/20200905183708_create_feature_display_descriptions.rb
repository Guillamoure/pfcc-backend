class CreateFeatureDisplayDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_display_descriptions do |t|
      t.integer :feature_id
      t.string :title
      t.string :description
      t.boolean :access_alignment
      t.integer :applicable_level
    end
  end
end
