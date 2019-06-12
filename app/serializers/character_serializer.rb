class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :hp, :alignment, :deity, :homeland, :gender, :age, :height, :weight, :hair, :eyes, :user_id, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :description, :background

  belongs_to :user
  has_many :character_klasses
  has_many :klasses, through: :character_klasses
  # has_many :klass_features, through: :klasses
  belongs_to :race
  # has_many :racial_traits, through: :race
end
