class AddBlurbToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :blurb, :string
    add_column :skills, :action, :string
    add_column :skills, :try_again, :string
    add_column :skills, :special, :string
    add_column :skills, :skill_unlock_5, :string
    add_column :skills, :skill_unlock_10, :string
    add_column :skills, :skill_unlock_15, :string
    add_column :skills, :skill_unlock_20, :string
  end
end
