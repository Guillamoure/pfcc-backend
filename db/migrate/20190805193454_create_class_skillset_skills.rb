class CreateClassSkillsetSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :class_skillset_skills do |t|
      t.integer :klass_id
      t.integer :skillset_id
      t.integer :skill_id
    end
  end
end
