class KlassFeature < ApplicationRecord
  belongs_to :klass
  # has_one :spellcasting
  has_many :feature_levels
  has_many :feature_actions
  has_many :actions, through: :feature_actions
  has_many :klass_feature_features
  has_many :features, through: :klass_feature_features

  has_many :character_klass_feature_usages
  has_many :klass_feature_associated_spells
  has_many :associated_spells, through: :klass_feature_associated_spells, class_name: "Spell", source: "spell"

  # belongs_to :base_klass_feature, optional: true
  # has_many :options, class_name: "KlassFeature", foreign_key: "base_klass_feature_id"

  has_many :options, class_name: "FeatureOption"

  has_many :klass_feature_klass_specializations
  has_many :klass_specializations, through: :klass_feature_klass_specializations



  validates :name, presence: true
  validates :description, presence: true
  # validate :correct_level_range

  # def correct_level_range
  #   if level_learned < 1 || level_learned > 20
  #     errors.add(:level_learned, "must be between 1 and 20")
  #   end
  # end
end
