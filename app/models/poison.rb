class Poison < ApplicationRecord
  belongs_to :source, optional: true
end
