class Subschool <  ApplicationRecord
  has_many :spell_subschools
  has_many :spells, through: :spell_subschools

end
