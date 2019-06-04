class KlassSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :hit_die, :skill_ranks

  has_many :klass_features
end
