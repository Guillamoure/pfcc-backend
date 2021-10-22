class CreatePatchNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :patch_notes do |t|
      t.string :version
      t.string :description
    end
  end
end
