class BreakupMessageSerializer < ActiveModel::Serializer
  attributes :id, :message, :tone, :subject
  has_one :topic
end
