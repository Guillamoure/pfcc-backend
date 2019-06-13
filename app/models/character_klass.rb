class CharacterKlass < ApplicationRecord
  belongs_to :klass
  has_many :klass_features, through: :klass
  belongs_to :character
end
