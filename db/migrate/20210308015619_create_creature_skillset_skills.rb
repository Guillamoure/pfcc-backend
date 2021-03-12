class CreateCreatureSkillsetSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :creature_skillset_skills do |t|
      t.integer :creature_id
      t.integer :skillset_id
      t.integer :skill_id
      t.integer :ranks
      t.string :detail
    end
  end
end
