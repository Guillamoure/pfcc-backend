class CharacterSerializer < ActiveModel::Serializer
  attributes :name, :hp, :alignment, :deity, :homeland, :gender, :age, :height, :weight, :hair, :eyes, :user_id, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :description, :background

  belongs_to :user
end
