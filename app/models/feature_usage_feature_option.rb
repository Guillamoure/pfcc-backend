class FeatureUsageFeatureOption < ApplicationRecord
  belongs_to :base_feature_usage, class_name: "FeatureUsage"
  belongs_to :option_feature_usage, class_name: "FeatureUsage"
end
