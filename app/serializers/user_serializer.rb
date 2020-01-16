class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :bio, :id, :admin, :skillset_id, :characters

  has_many :campaigns

end
