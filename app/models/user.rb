class User < ApplicationRecord
  has_many :characters, dependent: :destroy
  belongs_to :skillset

  has_secure_password

  validates :username, uniqueness: { case_sensitive: false }
end
