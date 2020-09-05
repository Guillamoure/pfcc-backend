class KlassSpecialization < ApplicationRecord
  has_many :klass_specialization_features
  has_many :klass_feature_klass_specializations
  has_many :klass_features, through: :klass_feature_klass_specializations
end
