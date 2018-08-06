class User < ApplicationRecord
  has_one :user_choice#, class_name: "UserChoice"
  belongs_to :room
end