class RaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :speed, :size, :description, :racial_traits, :race_ability_score_modifiers, :img_url, :favored_klass_bonuses, :source,
  :alternate_racial_traits

  has_many :racial_traits
  has_many :race_ability_score_modifiers

  def alternate_racial_traits
    begin
      se = self.object.object
    rescue
      se = self.object
    end
    se.alternate_racial_traits.map do |art|
      {
        name: art.name,
        description: art.description,
        source: art.source,
        alternate_trait_replace_racial_traits: art.alternate_trait_replace_racial_traits
      }
    end
  end
end
