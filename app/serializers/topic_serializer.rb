class TopicSerializer < ActiveModel::Serializer
  attributes :id, :theme, :quizzes, :breakup_messages
  
  def quizzes
    ActiveModel::SerializableResource.new(object.quizzes,  each_serializer: QuizSerializer)
  end

  def breakup_messages
    ActiveModel::SerializableResource.new(object.breakup_messages,  each_serializer: BreakupMessageSerializer)
  end
end
