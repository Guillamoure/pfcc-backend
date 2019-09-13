class KlassFeatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :level_learned, :description, :klass_id, :spellcasting

  belongs_to :klass
  has_one :spellcasting
end
