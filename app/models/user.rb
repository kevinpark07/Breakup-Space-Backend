class User < ApplicationRecord
    has_many :entries, foreign_key: "user_id", class_name: "Post", :dependent => :destroy
    # has_many :posts, :dependent => :destroy

    has_many :comments, :dependent => :destroy
    has_many :posts, through: :comments  
end
