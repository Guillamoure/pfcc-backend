class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :target, :saving_throw, :spell_resistance, :magic_school, :action, :duration, :time, :unit_of_time, :increase_per_level, :dismissible, :concentration, :spell_range, :components, :klasses, :klass_spells, :subschools


  has_many :klass_spells

end
