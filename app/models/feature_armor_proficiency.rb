class FeatureArmorProficiency < ApplicationRecord
  belongs_to :feature
  belongs_to :armor, optional: true
end
