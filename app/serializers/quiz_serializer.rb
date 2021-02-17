class QuizSerializer < ActiveModel::Serializer
  attributes :id, :question, :answers
  has_one :topic
end
