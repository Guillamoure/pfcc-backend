class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :target, :saving_throw, :spell_resistance, :magic_school, :action, :duration, :time, :unit_of_time, :increase_per_level, :dismissible, :concentration, :spell_range, :klasses, :klass_spells, :subschools, :spell_components

  has_many :klass_spells
  has_many :spell_components

end
