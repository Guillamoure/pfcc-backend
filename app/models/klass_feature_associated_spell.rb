class KlassFeatureAssociatedSpell < ApplicationRecord
  belongs_to :klass_feature
  belongs_to :spell
end
