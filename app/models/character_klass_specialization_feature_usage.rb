class CharacterKlassSpecializationFeatureUsage < ApplicationRecord
  belongs_to :character
  belongs_to :klass_specialization_feature
  belongs_to :feature_usage
end
