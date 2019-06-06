class KlassFeature < ApplicationRecord
  belongs_to :klass
  validates :name, presence: true
  validates :description, presence: true
  validate :correct_level_range

  def correct_level_range
    if level_learned < 1 || level_learned > 20
      errors.add(:level_learned, "must be between 1 and 20")
    end
  end
end
