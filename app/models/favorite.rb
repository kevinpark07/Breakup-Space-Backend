class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :breakup_message
end
