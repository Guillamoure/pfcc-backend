class FeatureUsage < ApplicationRecord
  belongs_to :feature
  has_many :feature_usage_spell_options
  has_many :spells, through: :feature_usage_spell_options
  has_many :options, class_name: 'FeatureUsageOption'
  has_many :character_klass_feature_usages
  has_many :character_klass_archetype_feature_usages

  belongs_to :toggle_off_action, class_name: 'Action', optional: true
  belongs_to :maintain_action, class_name: 'Action', optional: true

  has_many :feature_usage_options, class_name: "FeatureUsageFeatureOption", foreign_key: :base_feature_usage_id
  has_many :usage_options, through: :feature_usage_options, source: :option_feature_usage

  has_many :feature_usage_bases, class_name: "FeatureUsageFeatureOption", foreign_key: :option_feature_usage_id
  has_many :usage_bases, through: :feature_usage_bases, source: :base_feature_usage

  def all_feature_usage_options
    options = self.feature_usage_options.map do |fuo|
      source = {featureId: fuo.option_feature_usage.feature.id}
      if !!KlassFeatureFeature.find_by(feature_id: source[:featureId])
        source[:sourceId] = KlassFeatureFeature.find_by(feature_id: source[:featureId]).klass_feature_id
        source[:source] = "applicable_klass_features"
      end
      {id: fuo.id, base_feature_usage_id: fuo.base_feature_usage_id, option_feature_usage_id: fuo.option_feature_usage_id, option_name: fuo.option_name, cost: fuo.cost, optionSource: source}
    end
    return options

  end

  def feature_usage_base
    bases = self.feature_usage_bases.map do |fuo|
      source = {featureId: fuo.base_feature_usage.feature.id}
      if !!KlassFeatureFeature.find_by(feature_id: source[:featureId])
        source[:sourceId] = KlassFeatureFeature.find_by(feature_id: source[:featureId]).klass_feature_id
        source[:source] = "applicable_klass_features"
      end
      {id: fuo.id, base_feature_usage_id: fuo.base_feature_usage_id, option_feature_usage_id: fuo.option_feature_usage_id, option_name: fuo.option_name, cost: fuo.cost, baseSource: source}
    end
    return bases.first

  end


end
