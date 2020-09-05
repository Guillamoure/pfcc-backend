class SpellListSpellSerializer < ActiveModel::Serializer
  attributes :id, :spell_id, :spell_level, :spell_list

  # belongs_to :spell, serializer: SpellSerializer
end
