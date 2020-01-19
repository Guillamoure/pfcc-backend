class CreateFeatureSkillNote < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_skill_notes do |t|
      t.integer :feature_id
      t.integer :skill_id
      t.string :note
    end
  end
end
