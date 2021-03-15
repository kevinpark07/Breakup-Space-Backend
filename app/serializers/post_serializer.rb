class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :date, :up_votes, :user, :comments, :image

  def comments
    ActiveModel::SerializableResource.new(object.comments,  each_serializer: CommentSerializer)
  end

end
y