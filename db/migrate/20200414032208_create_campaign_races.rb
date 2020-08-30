class CreateCampaignRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :campaign_races do |t|
      t.integer :campaign_id
      t.integer :race_id
    end
  end
end
