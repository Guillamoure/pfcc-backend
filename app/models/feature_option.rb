class FeatureOption < ApplicationRecord
  belongs_to :klass_feature
  has_many :feature_option_actions
  has_many :actions, through: :feature_option_actions
  # has_many :character_klass_options
  # has_many :character_klasses, through: :character_klass_options
end
