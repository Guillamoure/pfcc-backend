class KlassArchetypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :klass_id, :klass_archetype_features

  def klass_archetype_features
    self.object.klass_archetype_features.map do |arch_f|
      # if arch_f.class != Hash
      #   kafl = arch_f.klass_archetype_feature_levels
      #   rkf = arch_f.replaces_klass_features
      #
      #   {
      #     id: arch_f[:id],
      #     klass_archetype_id: arch_f[:klass_archetype_id],
      #     name: arch_f[:name],
      #     description: arch_f[:description],
      #     klass_archetype_feature_levels: kafl,
      #     replaces_klass_features: rkf,
      #     features: arch_f.features.map {|f| FeatureSerializer.new(f)}
      #   }
      # else
      #   arch_f
      # end
      KlassArchetypeFeatureSerializer.new(arch_f)
    end
  end

end
