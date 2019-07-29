class AddActiveSkillsetToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :skillset_id, :integer
  end
end
