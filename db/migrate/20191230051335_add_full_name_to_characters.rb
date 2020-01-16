class AddFullNameToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :full_name, :string
  end
end
