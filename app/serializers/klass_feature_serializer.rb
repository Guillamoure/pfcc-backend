class KlassFeatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :level_learned, :description
  
  belongs_to :klass
end
