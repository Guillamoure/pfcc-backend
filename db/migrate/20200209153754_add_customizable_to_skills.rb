class AddCustomizableToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :customizable, :boolean, default: false
    add_column :character_skillset_skills, :detail, :string
  end
end
