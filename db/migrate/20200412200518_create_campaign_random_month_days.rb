class CreateCampaignRandomMonthDays < ActiveRecord::Migration[5.2]
  def change
    create_table :campaign_random_month_days do |t|
      t.integer :campaign_id
      t.integer :month_id
      t.integer :num_of_days
      t.integer :year
      t.integer :age
    end
  end
end
