class AddImageUrlToRaces < ActiveRecord::Migration[5.2]
  def change
    add_column :races, :img_url, :string
  end
end
