class AddPrevalenceToRaces < ActiveRecord::Migration[5.2]
  def change
    add_column :races, :prevalence, :string, default: nil
  end
end
