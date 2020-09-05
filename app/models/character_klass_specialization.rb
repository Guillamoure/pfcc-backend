class CharacterKlassSpecialization < ApplicationRecord
  belongs_to :character
  belongs_to :klass_feature_klass_specialization
  has_one :klass_feature, through: :klass_feature_klass_specialization
  has_one :klass_specialization, through: :klass_feature_klass_specialization
end
