class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :bio, :id, :admin, :skillset_id

  has_many :characters

end
