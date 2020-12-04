class ChangeOptionsForKlassFeatures < ActiveRecord::Migration[5.2]
  def change
    remove_column :klass_features, :options, :boolean
    add_column :klass_features, :has_klass_feature_options, :boolean

  end
end
