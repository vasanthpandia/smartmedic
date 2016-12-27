class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name

  def id
    object.id.to_s
  end
end
