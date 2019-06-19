class KlassFeatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :level_learned, :description, :klass_id

  belongs_to :klass
end
