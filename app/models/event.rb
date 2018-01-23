class Event < ApplicationRecord
 belongs_to :creator, :class_name => "User", :foreign_key => "creator_id"
 has_many :attendances, foreign_key: :attendance_id
 has_many :attendees, :through => :attendances
 
 scope :upcoming, -> { where("date >= ?", Date.current)}
 scope :past, -> { where("date < ?", Date.current)}
end
