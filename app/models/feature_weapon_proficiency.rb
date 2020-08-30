class FeatureWeaponProficiency < ApplicationRecord
  belongs_to :feature
  belongs_to :weapon, optional: true
end
