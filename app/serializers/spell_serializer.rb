class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :target, :saving_throw, :spell_resistance, :magic_school, :action, :duration, :time, :unit_of_time, :increase_per_level, :dismissible, :concentration, :spell_range, :subschools, :spell_components, :features

  has_many :spell_list_spells
  has_many :spell_components

  def features
    self.object.features.map do |f|
      FeatureSerializer.new(f)
    end
  end

end
