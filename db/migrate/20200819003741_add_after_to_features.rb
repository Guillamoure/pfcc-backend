class AddAfterToFeatures < ActiveRecord::Migration[5.2]
  def change
    add_column :features, :after, :boolean, default: false
  end
end
