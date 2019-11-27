class KlassFeatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :klass_id, :spellcasting, :feature_levels

  belongs_to :klass
  has_one :spellcasting
end
