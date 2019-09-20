class DropRanges < ActiveRecord::Migration[5.2]
  def change
    drop_table :ranges
  end
end
