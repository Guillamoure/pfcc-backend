class ChangeCampaignsDate < ActiveRecord::Migration[5.2]
  def change
    remove_column :campaigns, :month, :string
    remove_column :campaigns, :weekday, :string
    remove_column :campaigns, :day, :integer
    remove_column :campaigns, :year, :integer
    remove_column :campaigns, :age, :integer
    add_column :campaigns, :starting_month, :string
    add_column :campaigns, :starting_weekday, :string
    add_column :campaigns, :starting_day, :integer
    add_column :campaigns, :starting_year, :integer
    add_column :campaigns, :starting_age, :string
    add_column :campaigns, :current_month, :string
    add_column :campaigns, :current_weekday, :string
    add_column :campaigns, :current_day, :integer
    add_column :campaigns, :current_year, :integer
    add_column :campaigns, :current_age, :string
  end
end
