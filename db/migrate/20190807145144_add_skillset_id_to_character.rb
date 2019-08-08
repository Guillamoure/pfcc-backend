class AddSkillsetIdToCharacter < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :skillset_id, :integer

  end
end
