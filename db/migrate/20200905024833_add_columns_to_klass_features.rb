class AddColumnsToKlassFeatures < ActiveRecord::Migration[5.2]
  def change
    add_column :klass_features, :specialization, :boolean
    add_column :klass_features, :choice_amount, :integer, default: 0
    add_column :klass_features, :options, :boolean
    add_column :klass_features, :base_klass_feature_id, :integer
  end
end
