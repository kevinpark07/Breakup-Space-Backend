class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :date, :time, :up_votes, :user, :post

end
