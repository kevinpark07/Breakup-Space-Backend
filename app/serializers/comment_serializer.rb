class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :date, :up_votes, :user, :post

end
