class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :bio, :id, :admin

  has_many :characters

end
