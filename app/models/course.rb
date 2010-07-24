class Course < ActiveRecord::Base

has_many :streams

def self.find_courses
	find(:all, :order => "course")
end

def course_and_code
  "#{course}#{code}"
end

end
