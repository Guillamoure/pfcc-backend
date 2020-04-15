class CreateCampaignKlasses < ActiveRecord::Migration[5.2]
  def change
    create_table :campaign_klasses do |t|
      t.integer :campaign_id
      t.integer :klass_id
    end
  end
end
