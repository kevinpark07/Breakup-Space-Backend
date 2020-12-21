class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :age, :username, :profile_image, :relationship_status, :entries, :comments

  def comments
    ActiveModel::SerializableResource.new(object.comments,  each_serializer: CommentSerializer)
  end

  def entries
    ActiveModel::SerializableResource.new(object.entries,  each_serializer: PostSerializer)
  end

end
