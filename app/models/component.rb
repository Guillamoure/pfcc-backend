class Component < ApplicationRecord
  has_many :spell_components
  has_many :spells, through: :spell_components
end
