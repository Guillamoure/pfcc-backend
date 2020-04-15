class Calendar < ApplicationRecord
  has_many :months
  has_many :days

  # TODO: work out leap year logic
  # have leap month booleans on months
  # have leap year boolean on calendar
end
