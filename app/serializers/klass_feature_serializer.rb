class KlassFeatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :klass_id, :feature_levels, :actions, :features, :has_klass_feature_options, :associated_spells, :specialization, :choice_amount, :klass_specializations

  # belongs_to :klass
  # has_one :spellcasting
  # has_many :feature_options
  # has_many :options

  # def feature_options
  #   self.object.feature_options.map do |fo|
  #     FeatureOptionSerializer.new(fo)
  #   end
  # end

  # def klass_specializations
  #   self.object.klass_specializations.map do |ks|
  #     KlassSpecializationSerializer.new(ks)
  #   end
  # end

  def features
    self.object.features.map do |f|
      FeatureSerializer.new(f)
    end
  end


end
