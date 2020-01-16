class User < ApplicationRecord
  has_many :characters, dependent: :destroy
  belongs_to :skillset
  has_many :campaigns, foreign_key: 'dm_id'

  has_secure_password

  validates :username, uniqueness: { case_sensitive: false }
end
