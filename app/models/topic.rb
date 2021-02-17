class Topic < ApplicationRecord
    has_many :quizzes
    has_many :breakup_messages
end
