class KlassFeatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :klass_id, :feature_levels, :feature_options, :actions, :features

  # belongs_to :klass
  # has_one :spellcasting
  # has_many :feature_options

  def feature_options
    self.object.feature_options.map do |fo|
      FeatureOptionSerializer.new(fo)
    end
  end

  def features
    self.object.features.map do |f|
      FeatureSerializer.new(f)
    end
  end


end
