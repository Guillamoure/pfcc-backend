class CreateCharacterSkillsetSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :character_skillset_skills do |t|
      t.integer :character_id
      t.integer :skillset_id
      t.integer :skill_id
      t.integer :ranks
    end
  end
end
