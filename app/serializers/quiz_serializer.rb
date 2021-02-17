class QuizSerializer < ActiveModel::Serializer
  attributes :id, :question, :answers
  
end
