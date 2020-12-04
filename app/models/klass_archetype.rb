class KlassArchetype < ApplicationRecord
  belongs_to :klass
  has_many :klass_archetype_features
end
