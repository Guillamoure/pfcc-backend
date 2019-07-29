class CreateSkillsetSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skillset_skills do |t|
      t.integer :skillset_id
      t.integer :skill_id
    end
  end
end
