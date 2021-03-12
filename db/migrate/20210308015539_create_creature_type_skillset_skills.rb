class CreateCreatureTypeSkillsetSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :creature_type_skillset_skills do |t|
      t.integer :creature_type_id
      t.integer :skill_id
      t.integer :skillset_id
    end
  end
end
