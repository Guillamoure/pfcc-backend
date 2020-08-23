class CharacterKlassFeatureUsage < ApplicationRecord
  belongs_to :character
  belongs_to :klass_feature
  belongs_to :feature_usage
end
