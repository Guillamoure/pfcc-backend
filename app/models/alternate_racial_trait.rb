class AlternateRacialTrait < ApplicationRecord
  belongs_to :race
  belongs_to :source
  has_many :alternate_trait_replace_racial_traits
end
