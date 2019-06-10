class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :bio, :id, :admin
end
