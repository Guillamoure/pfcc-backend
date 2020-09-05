class KlassSpecializationFeature < ApplicationRecord
  belongs_to :klass_specialization
  has_many :klass_specialization_feature_features
  has_many :features, through: :klass_specialization_feature_features
end
