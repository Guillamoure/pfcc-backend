class ArchetypeFeatureReplaceKlassFeature < ApplicationRecord
  belongs_to :klass_feature, optional: true
  belongs_to :klass_archetype_feature
end
