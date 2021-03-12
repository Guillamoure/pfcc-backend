class KlassArchetypeFeatureSerializer < ActiveModel::Serializer
  attributes :id, :klass_archetype_id, :name, :description, :klass_archetype_feature_levels, :replaces_klass_features, :features

  def features
    self.object.features.map do |f|
      FeatureSerializer.new(f)
    end
  end

end
