class BreakupMessage < ApplicationRecord
    has_many :favorites, :dependent => :destroy
end
