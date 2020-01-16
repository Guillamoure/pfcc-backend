class CreateFeatureSkillBonus < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_skill_bonus do |t|
      t.integer :feature_id
      t.integer :skill_id
      t.integer :bonus
      t.string :bonus_type
      t.string :duration
    end
  end
end
