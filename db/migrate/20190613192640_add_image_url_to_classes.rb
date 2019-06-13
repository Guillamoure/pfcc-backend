class AddImageUrlToClasses < ActiveRecord::Migration[5.2]
  def change
    add_column :klasses, :img_url, :string
  end
end
