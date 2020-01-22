class ChangeCampaigns < ActiveRecord::Migration[5.2]
  def change
    remove_column :campaigns, :date, :string
    add_column :campaigns, :weekday, :string
    add_column :campaigns, :month, :string
    add_column :campaigns, :day, :integer
    add_column :campaigns, :age, :integer
    add_column :campaigns, :year, :integer
  end
end
