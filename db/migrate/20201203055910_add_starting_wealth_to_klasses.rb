class AddStartingWealthToKlasses < ActiveRecord::Migration[5.2]
  def change
    add_column :klasses, :starting_wealth, :string
  end
end
