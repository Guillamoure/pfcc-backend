class DropCastingTimes < ActiveRecord::Migration[5.2]
  def change
    drop_table :casting_times
  end
end
