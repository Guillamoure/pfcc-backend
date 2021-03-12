class CharacterKlassArchetypeFeatureUsage < ApplicationRecord
  belongs_to :character
  belongs_to :klass_archetype_feature
  belongs_to :feature_usage
end
