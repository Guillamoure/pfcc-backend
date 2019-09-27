class PreparedSpellSerializer < ActiveModel::Serializer
  attributes :id, :klass_spell_id, :character_id, :spell_level, :spell, :action, :spell_range, :magic_school, :klass

  # belongs_to :spell, through: :klass_spell
end
