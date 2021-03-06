class KlassArchetypeFeature < ApplicationRecord
  belongs_to :klass_archetype
  has_many :klass_archetype_feature_levels
  has_many :replaces_klass_features, class_name: "ArchetypeFeatureReplaceKlassFeature"
  has_many :klass_archetype_feature_features
  has_many :features, through: :klass_archetype_feature_features
end
