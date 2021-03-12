class FeatureAnimal < ApplicationRecord
  belongs_to :feature
  belongs_to :summoned_creature_list, optional: true
end
