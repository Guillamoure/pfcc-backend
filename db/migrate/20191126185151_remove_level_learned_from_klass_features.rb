class RemoveLevelLearnedFromKlassFeatures < ActiveRecord::Migration[5.2]
  def change
    remove_column :klass_features, :level_learned, :integer
  end
end
