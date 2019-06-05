class KlassFeature < ApplicationRecord
  belongs_to :klass
  validates_associated :klass
end
