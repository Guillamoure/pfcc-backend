class AddColumnsToCampaign < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :calendar_id, :integer
    add_column :campaigns, :theme, :string
    add_column :campaigns, :setting, :string
    add_column :campaigns, :starting_level, :integer
    add_column :campaigns, :skillset_id, :integer
    add_column :campaigns, :custom_notes, :string
  end
end
