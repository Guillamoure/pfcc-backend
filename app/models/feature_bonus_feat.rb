class FeatureBonusFeat < ApplicationRecord
  belongs_to :feat, optional: true
  belongs_to :feature
end
