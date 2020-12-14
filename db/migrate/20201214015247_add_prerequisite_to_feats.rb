class AddPrerequisiteToFeats < ActiveRecord::Migration[5.2]
  def change
    add_column :feats, :prerequisite, :string
  end
end
