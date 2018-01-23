class User < ApplicationRecord
 has_many :events, :foreign_key => "creator_id"
 has_many :attended_event, through: :attendances
 has_many :attendances, foreign_key: :attendee_id
 

 validates :name, presence: :true
 validates :password, presence: :true
end
