class NewCharacterSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  attributes :name
  belongs_to :race
  has_many :character_klasses
end
