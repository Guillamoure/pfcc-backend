class KlassArchetypeFeature < ApplicationRecord
  belongs_to :klass_archetype
  has_many :klass_archetype_feature_levels
  has_many :replaces_klass_features, class_name: "ArchetypeFeatureReplaceKlassFeature"
end
