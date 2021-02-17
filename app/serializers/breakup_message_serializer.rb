class BreakupMessageSerializer < ActiveModel::Serializer
  attributes :id, :message, :tone, :subject
  
end
