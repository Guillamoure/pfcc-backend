class AddAdminToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :klasses, :fortitude, :float
    add_column :klasses, :reflex, :float
    add_column :klasses, :will, :float
  end
end
