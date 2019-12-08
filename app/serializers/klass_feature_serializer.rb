class KlassFeatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :klass_id, :spellcasting, :feature_levels, :feature_options, :actions

  belongs_to :klass
  has_one :spellcasting
  # has_many :feature_options

  def feature_options
    self.object.feature_options.map do |fo|
      FeatureOptionSerializer.new(fo)
    end
  end


end
