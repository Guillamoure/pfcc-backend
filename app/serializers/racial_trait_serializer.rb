class RacialTraitSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :associated_spells, :race_id, :alternate_trait_replace_racial_traits

  # has_many :racial_traits
  # has_many :race_ability_score_modifiers
  #
  # def alternate_racial_traits
  #   begin
  #     se = self.object.object
  #   rescue
  #     se = self.object
  #   end
  #   se.alternate_racial_traits.map do |art|
  #     {
  #       name: art.name,
  #       description: art.description,
  #       source: art.source,
  #       alternate_trait_replace_racial_traits: art.alternate_trait_replace_racial_traits,
  #       associated_spells: art.associated_spells
  #     }
  #   end
  # end
end
