class AddCampaignIdToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :campaign_id, :integer
  end
end
