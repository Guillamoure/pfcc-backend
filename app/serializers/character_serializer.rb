class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :alignment, :deity, :homeland, :gender, :age, :height, :weight, :hair, :eyes, :user_id, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :description, :background, :any_bonus, :character_skillset_skills, :lethal_damage, :non_lethal_damage

  belongs_to :user
  has_many :character_klasses
  has_many :klasses, through: :character_klasses
  has_many :klass_features, through: :klasses
  belongs_to :race
  belongs_to :skillset
  has_many :character_skillset_skills
end
