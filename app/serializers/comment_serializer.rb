class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :date, :time, :user

end
