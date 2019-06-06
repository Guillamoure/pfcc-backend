class KlassSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :hit_die, :skill_ranks, :fortitude, :reflex, :will

  has_many :klass_features
end
