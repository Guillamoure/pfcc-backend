class FeatureAction < ApplicationRecord
  belongs_to :action
  belongs_to :klass_feature
end
