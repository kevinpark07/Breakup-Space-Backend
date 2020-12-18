class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :age, :username, :profile_image, :relationship_status, :posts, :comments

  def comments
    ActiveModel::SerializableResource.new(object.comments,  each_serializer: CommentSerializer)
  end

  def posts
    ActiveModel::SerializableResource.new(object.posts,  each_serializer: PostSerializer)
  end

end
