class KlassSpecializationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :klass_features

  has_many :klass_specialization_features
end
