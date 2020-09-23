class KlassSpecializationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :klass_features, :klass_feature_klass_specializations

  has_many :klass_specialization_features
end
