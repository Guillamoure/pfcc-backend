class KlassSpecializationFeatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :level, :features, :klass_specialization_id

  def features
    self.object.features.map do |f|
      FeatureSerializer.new(f)
    end
  end

end
