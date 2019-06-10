class RacialTrait < ApplicationRecord
  belongs_to :race

  validates :name, presence: true
  validates :description, presence: true
  
end
