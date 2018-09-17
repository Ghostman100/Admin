class User < ApplicationRecord
  has_one :user_choice#, class_name: "UserChoice"
 has_and_belongs_to_many :rooms
end
