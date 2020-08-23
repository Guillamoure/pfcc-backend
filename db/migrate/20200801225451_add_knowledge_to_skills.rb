class AddKnowledgeToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :knowledge, :boolean, default: false
  end
end
