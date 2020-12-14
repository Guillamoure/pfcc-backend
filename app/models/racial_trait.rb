class RacialTrait < ApplicationRecord
  belongs_to :race
  has_many :alternate_trait_replace_racial_traits

  validates :name, presence: true
  validates :description, presence: true

end
