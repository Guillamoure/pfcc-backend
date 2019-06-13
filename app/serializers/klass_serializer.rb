class KlassSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :hit_die, :skill_ranks, :fortitude, :reflex, :will, :img_url

  has_many :klass_features
end
