class CreateFeatureLanguage < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_languages do |t|
      t.integer :feature_id
      t.string :language
      t.string :note
    end
  end
end
